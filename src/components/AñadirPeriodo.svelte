<script>
  export let periodos;

  import IconButton from "@smui/icon-button";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  
  let nuevoperiodo

  $: nuevoperiodo = {
    id_periodo: "",
    año: "",
    cuatrimestre: ""
  };

  let message;

  function añadeperiodo() {
    fetch(`nuevoperiodo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoperiodo)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nueva periodo guardado";
        }
      });
  }

  function existe(a,q) {
    let introducido = periodos.find(per => 
        per.año === parseInt(a) && per.cuatrimestre === parseInt(q));
    return introducido;
  }
</script>

<style>
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Añadir Periodo</Label>
  </Title>
  <Content>
    <Textfield
      label="Año"
      style="width: 100%"
      bind:value={nuevoperiodo.año} />
    <Textfield
      label="Cuatrimestre"
      style="width: 100%"
      bind:value={nuevoperiodo.cuatrimestre} />
  
    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <div class="actions">
      <Actions>
        {#if nuevoperiodo.año === "" || nuevoperiodo.cuatrimestre === ""
             || existe(nuevoperiodo.año, nuevoperiodo.cuatrimestre)}
          <Button color="secondary" variant="raised">
            <Label>Cancel</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancel</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={añadeperiodo}>
            <Label>
              Salvar
            </Label>
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Añadir Periodo</Label>
</Button>