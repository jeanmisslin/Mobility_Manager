<script>
  export let periodos;
  export let onSeleccionado;

  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";

  let periodo_seleccionado = {
    id_periodo: "",
    año: "",
    cuatrimestre: ""
  };

  function listPeriodos() {}

</script>

<Dialog
    bind:this={listPeriodos}
    aria-labelledby="list-title"
    aria-describedby="list-content">
    <Title id="list-title">Periodos Académicos</Title>
    <Content component={List} id="list-content">
      <Item
        on:click={() => {
          periodo_seleccionado.id_periodo = '';
          periodo_seleccionado.año = '';
          periodo_seleccionado.cuatrimestre = '';
          onSeleccionado({...periodo_seleccionado})
          listPeriodos.close();
        }}>
        <Text>Todos los Periodos</Text>
      </Item>
      {#each periodos as p}
        <Item
          on:click={() => {
            periodo_seleccionado.id_periodo = p.id_periodo;
            periodo_seleccionado.año = p.año;
            periodo_seleccionado.cuatrimestre = p.cuatrimestre;
            onSeleccionado({...periodo_seleccionado})
            listPeriodos.close();
          }}>
          <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
        </Item>
      {/each}
    </Content>
  </Dialog>

  <div>
    <div class="seleccion">
      <span class="valor-seleccionado">
        {#if periodo_seleccionado.año}
          Estudiantes: {periodo_seleccionado.año}-{periodo_seleccionado.año + 1}
          Q{periodo_seleccionado.cuatrimestre}
        {:else}
          <span class="empty">Todos los Estudiantes</span>
        {/if}
      </span>
      <Button on:click={() => listPeriodos.open()}>
        <div class="material-icons">search</div>
        <Label>Periodos Académicos</Label>
      </Button>
    </div>
  </div>