<script>
  export let elimina;
  export let oferta;

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

  let simpleDialog;

  let array = oferta.titulacion.split(",");

  let message;

  function reconstruir(array, elimina) {
    let i;
    let modificada = "";
    for (i = 0; i != array.length; i++)
      if (array[i] != elimina) {
        modificada = modificada + array[i];
        }
      return modificada;
  }

  let modificacion = {
    oferta: oferta.id_oferta,
    titulacion: reconstruir(array,elimina)
  };

  function modificaoferta() {
    fetch(`modificatitulacionesoferta.json`, {
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
      });
  }
</script>

<div>
    <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
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

    <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}><Label>Eliminar</Label></Button>
  </div>

<!--{#if modificacion.open}
  <div class="request-box">
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificaoferta}>Salvar</button>
          <button on:click={() => (modificacion.open = false)}>Cancelar</button>
        </div>
      </div>
    </div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificacion.open = true)}>Eliminar</button>
    </div>
  </div>
{/if}-->
