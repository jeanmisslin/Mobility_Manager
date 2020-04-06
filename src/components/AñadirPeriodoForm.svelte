<script>
  export let periodos;

  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  function ultimo(periodos){
    let id = periodos.length;
    return periodos[id-1];
  }

  let periodo = ultimo(periodos);

  function cuatri(periodo){
    if (periodo.cuatrimestre === 2){
      return 1;
    }
    return 2;
  }

  function año(periodo){
    if (periodo.cuatrimestre === 2){
      return periodo.año+1;
    }
    return periodo.año;
  }

  let simpleDialog;
  
  let nuevoperiodo;

  $: nuevoperiodo = {
    id_periodo: "",
    año: año(periodo),
    cuatrimestre: cuatri(periodo)
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
</script>

<style>
</style>

<div>
    <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
      <Title id="simple-title">Añadir Periodo</Title>
        <Content>
          ¿Deseas añadir el periodo {nuevoperiodo.año}-{nuevoperiodo.año+1} Q{nuevoperiodo.cuatrimestre}?
        </Content>
      <Actions>
        <Button color="secondary" variant="raised" on:click={() => simpleDialog.close()}>
          <Label>Cancelar</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={añadeperiodo}>
          <Label>Salvar</Label>
        </Button>
      </Actions>
    </Dialog>

    <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}><Label>Añadir Periodo</Label></Button>
  </div>