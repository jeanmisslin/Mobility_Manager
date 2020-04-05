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

  function años(){
    let i = 2020;
    let array = [2019];
    for(i; i < 2034; i++){
      array.push(i);
    }
    return array;
  }

  let array = años();

  let dialog;

  let cuatrimestres = [1,2];
  
  let nuevoperiodo

  $: nuevoperiodo = {
    id_periodo: "",
    año: "",
    cuatrimestre: ""
  };

  let warning = "Ya existe un periodo con el mismo año y cuatrimestre";

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
  #warning {
      text-align: center;
      color: red;
    }
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Añadir Periodo</Label>
  </Title>
  <Content>
    <Select style="width: 100%" bind:value={nuevoperiodo.año} label="Año">
      <Option value="" />
      {#each array as año}
        <Option value={año} selected={nuevoperiodo.año === año}>
          {año}
        </Option>
      {/each}
    </Select>
    <Select style="width: 100%" bind:value={nuevoperiodo.cuatrimestre} label="Cuatrimestre">
      <Option value="" />
      {#each cuatrimestres as cuatri}
        <Option value={cuatri} selected={nuevoperiodo.cuatrimestre === cuatri}>
          {cuatri}
        </Option>
      {/each}
    </Select>
    
    {#if existe(nuevoperiodo.año, nuevoperiodo.cuatrimestre)}
      <div id="warning">{warning}</div>
    {/if}
  
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