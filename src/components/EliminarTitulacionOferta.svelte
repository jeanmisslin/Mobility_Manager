<script>
  export let elimina;
  export let oferta;
  export let onModificado;

  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let simpleDialog;
  let message;

  $: array = oferta.titulacion.split(",");

  function reconstruir(array, elimina) {
    let i;
    let modificada = "";
    for (i = 0; i != array.length; i++)
      if ((i === 0 && array[i] != elimina) || (i === 1 && array[0] === elimina)) {
          modificada = modificada + array[i];
      } else if (array[i] != elimina) {
          modificada = modificada + "," + array[i];
      }
    return modificada;
  }

  $: modificacion = {
    oferta: oferta.id_oferta,
    titulacion: reconstruir(array, elimina)
  };

  function modificaoferta() {
    fetch(`/endpoints/modificatitulacionesoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nueva oferta guardada";
        }
        onModificado({...modificacion});
      });
  }
</script>

<div>
  <Dialog
    bind:this={simpleDialog}
    aria-labelledby="simple-title"
    aria-describedby="simple-content">
    <Title id="simple-title">Eliminar Titulación</Title>
    <Actions>
      <Button color="secondary" variant="raised">
        <Label>NO</Label>
      </Button>
      <Button color="secondary" variant="raised" on:click={modificaoferta}>
        <Label>SI</Label>
      </Button>
    </Actions>
  </Dialog>

  <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}>
    <Label>Eliminar</Label>
  </Button>
</div>