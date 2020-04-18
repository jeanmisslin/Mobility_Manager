<script>
  export let oferta;
  export let acuerdo;
  export let active;
  export let seleccion;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let simpleDialog;

  let pestaña = seleccion;

  let message;
  let asignacion;
  let modificacion;

  $: asignacion = {
    open: false,
    acuerdo: acuerdo,
    oferta: oferta.id_oferta,
    estado: "Solicitada"
  };

  $: modificacion = {
    solicitadas: oferta.plazas_solicitadas,
    asignatura: oferta.asignatura,
    periodo: oferta.periodo_academico
  };

  function asignar() {
    fetch(`nuevaasignacion.json`, {
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

  function solicitar() {
    fetch(`solicitarasignatura.json`, {
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

  function ejecutarambas() {
    console.log("Click!!");
    asignar();
    solicitar();
    location.reload(true);
    active = "Asignaturas Solicitadas";
    seleccion = pestaña;
  }

  function abrir() {
    asignacion = { ...asignacion, open: true };
  }

  function cerrar() {
    asignacion = { ...asignacion, open: false };
  }
</script>

<style>

</style>

<div>
    <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
      <Title id="simple-title">Solicitar Asignatura</Title>
      <Actions>
        <Button color="secondary" variant="raised" on:click={cerrar}>
          <Label>NO</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={ejecutarambas}>
          <Label>SI</Label>
        </Button>
      </Actions>
    </Dialog>

    <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}><Label>Solicitar</Label></Button>
  </div>