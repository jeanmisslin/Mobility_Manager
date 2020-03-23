<script>
  export let asignatura;
  export let acuerdo;

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

  let modificacion = {
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

  function ejecutarresta() {
    modificarasignacion();
    restar();
  }

  function ejecutarincremento() {
    modificarasignacion();
    incrementar();
  }
</script>

<style>
  .seleccion {
    display: flex;
    flex-direction: row;
    align-items: center;
    margin-bottom: 1.3rem;
  }
  .valor-seleccionado {
    flex: 1;
    color: black;
    font-size: 1.1rem;
  }
  .actions {
    margin-top: 2em;
  }
  .empty {
    color: rgb(156, 156, 156);
    font-style: italic;
    font-size: 0.9rem;
  }

  #boton {
    display: flex;
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
      {#if asignacion.estado === 'Concedida' && asignacion.previo !== 'Concedida'}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={ejecutarresta}>
          <Label>Salvar</Label>
        </Button>
      {:else if asignacion.estado !== 'Concedida' && asignacion.previo === 'Concedida'}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={ejecutarincremento}>
          <Label>Salvar</Label>
        </Button>
      {:else if asignacion.estado !== 'Concedida' && asignacion.previo !== 'Concedida'}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={modificarasignacion}>
          <Label>Salvar</Label>
        </Button>
      {:else if asignacion.estado === 'Concedida' && asignacion.previo === 'Concedida'}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={modificarasignacion}>
          <Label>Salvar</Label>
        </Button>
      {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modificar</Label>
</Button>
