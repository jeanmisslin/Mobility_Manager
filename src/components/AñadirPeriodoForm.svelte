<script>
  export let periodos;
  export let onModificado;

  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  function ultimo(periodos){
    let id = periodos.length;
    return periodos[id-1];
  }

  $: periodo = ultimo(periodos);

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

  $: nuevoperiodo = {
    id_periodo: "",
    año: año(periodo),
    cuatrimestre: cuatri(periodo)
  };

  let message;

  async function añadeperiodo() {
    const body = await fetch(`nuevoperiodo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoperiodo)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "periodo guardado";
      return json.id_periodo;
    }
  }

  async function ejecutarambas() {
    const id_periodo = await añadeperiodo();
    nuevoperiodo.id_periodo = id_periodo;
    if (onModificado) {
      onModificado({...nuevoperiodo});
    }
  }
</script>

<style>
</style>


    <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
      <Title id="simple-title">Añadir Periodo</Title>
        <Content>
          ¿Deseas añadir el periodo {nuevoperiodo.año}-{nuevoperiodo.año+1} Q{nuevoperiodo.cuatrimestre}?
        </Content>
      <Actions>
        <Button color="secondary" variant="raised" on:click={() => simpleDialog.close()}>
          <Label>Cancelar</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={ejecutarambas}>
          <Label>Salvar</Label>
        </Button>
      </Actions>
    </Dialog>

    <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}><Label>Añadir Periodo</Label></Button>
  