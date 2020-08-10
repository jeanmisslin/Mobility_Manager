<script>
  export let oferta;
  export let acuerdo;
  export let onSolicitada;

  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let simpleDialog;
  let message;

  $: asignacion = {
    open: false,
    acuerdo: acuerdo,
    oferta: oferta.id_oferta,
    estado: "Solicitada"
  };

  $: modificacion = {
    solicitadas: oferta.plazas_solicitadas,
    id: oferta.id_oferta
  };

  async function asignar() {
    const body = await fetch(`/endpoints/nuevaasignacion.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(asignacion)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "asignacion guardada";
      return json.id_asignacion;
    }
  }

  async function solicitar() {
    const body = await fetch(`/endpoints/solicitarasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
    } else {
      message = "oferta guardada";
    }
  }

  async function ejecutarambas() {
    const id_asignacion = await asignar();
    await solicitar();

    if (onSolicitada) {
      onSolicitada({
        id_asignacion,
        oferta: oferta.id_oferta,
        ...oferta, // Metemos todos los campos de oferta en este objeto!
        estado_solicitud: "Solicitada",
        // TODO: Completar
      });
    }
  }

  function cerrar() {
    asignacion = { ...asignacion, open: false };
  }
</script>

<style>
</style>

<div>
  <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
    <Title id="simple-title">Solicitar Asignatura {oferta.codigo_asignatura}</Title>
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