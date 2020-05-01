<script>
  export let asignatura;
  export let acuerdo;
  export let onModificado;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, {
    Group,
    GroupItem,
    Label,
    Icon as ButtonIcon
  } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";
  import Radio from "@smui/radio";

  let estados = [
    `Concedida`,
    `Denegada`,
    `Solicitada`,
    `Descartada`,
    `Eliminada`
  ];

  let dialog;

  let message;

  let asignacion = {
    id: asignatura.id_asignacion,
    previo: asignatura.estado_solicitud,
    estado: asignatura.estado_solicitud
  };

  let modificacion;

  $: modificacion = {
    disponibles: asignatura.plazas_disponibles,
    concedidas: asignatura.plazas_concedidas,
    asignatura: asignatura.codigo_asignatura,
    periodo: acuerdo.periodo_academico
  };

  function modificarasignacion() {
    fetch(`modificarasignacion.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(asignacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "asignacion guardada";
        }
        onModificado(asignatura.codigo_asignatura, 
                     asignacion.estado, 
                     asignatura.plazas_disponibles,
                     asignatura.plazas_concedidas);
        asignacion.previo = asignacion.estado;
      });
  }

  function restar() {
    fetch(`restarplazadisponible.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "oferta guardada";
        }
      });
  }

  function incrementar() {
    fetch(`incrementarplazadisponible.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "oferta guardada";
        }
      });
  }

  function modificarPlazas() {
      if (asignacion.estado === 'Concedida' && asignacion.previo !== 'Concedida') {
          restar();
          asignatura.plazas_concedidas = asignatura.plazas_concedidas + 1;
          asignatura.plazas_disponibles = asignatura.plazas_disponibles - 1;
      }
      else if (asignacion.estado !== 'Concedida' && asignacion.previo === 'Concedida'){
          incrementar();
          asignatura.plazas_concedidas = asignatura.plazas_concedidas - 1;
          asignatura.plazas_disponibles = asignatura.plazas_disponibles + 1;
      }
  }

  function ambas() {
    modificarasignacion();
    modificarPlazas();
  }
</script>

<style>
  .actions {
    margin-top: 2em;
  }
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Modificar Estado</Label>
  </Title>
  <Content>
    <Select style="width: 100%" bind:value={asignacion.estado} label="Estados">
      <Option value="" />
      {#each estados as estado}
        <Option value={estado} selected={asignacion.estado === estado}>
          {estado}
        </Option>
      {/each}
    </Select>

    <div style="height: 1em" />

    <div class="actions">
      <Actions>
        <Button color="secondary" variant="raised">
          <Label>Cancelar</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={ambas}>
          <Label>Salvar</Label>
        </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modificar</Label>
</Button>
