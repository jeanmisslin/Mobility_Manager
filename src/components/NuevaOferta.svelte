<script>
  export let asignatura;
  export let titulaciones;
  export let periodo;

  import Select, { Option } from "@smui/select";
  import IconButton from "@smui/icon-button";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let message;

  function listTitulaciones() {}

  $: nuevaoferta = {
    id_oferta: "",
    asignatura: asignatura,
    periodo_academico: periodo,
    titulacion: "",
    plazas_ofertadas: "",
    plazas_disponibles: "",
    plazas_solicitadas: 0,
    plazas_concedidas: 0
  };

  $: nombre_titulacion = "";

  let plazas = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  let filtroTitulaciones = "";

  $: TitulacionesFiltradas = titulaciones.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.titulacion_catalan, filtroTitulaciones) ||
      strIn(e.titulacion_castellano, filtroTitulaciones) ||
      strIn(e.titulacion_ingles, filtroTitulaciones)
    );
  });

  async function añadeoferta() {
    const body = await fetch(`/endpoints/nuevaoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaoferta)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "nueva oferta guardada";
      return json.id_oferta
    }
  }
</script>

<style>
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Nueva Oferta</Label>
  </Title>
  <Content>

    <!------------- Plazas Ofertadas --------------->
    <Select
      style="width: 100%"
      bind:value={nuevaoferta.plazas_ofertadas}
      label="Plazas Ofertadas">
      <Option value="" />
      {#each plazas as e}
        <Option value={e} selected={nuevaoferta.plazas_ofertadas === e}>
          {e}
        </Option>
      {/each}
    </Select>
  
    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <!--------------- Titulaciones ----------------->
    <Dialog
      bind:this={listTitulaciones}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield label="Buscador" style="width: 100%" bind:value={filtroTitulaciones} />
      </Title>
      <Content component={List} id="list-content">
        {#each TitulacionesFiltradas as t}
          <Item
            on:click={() => {
              nuevaoferta.titulacion = t.codigo_titulacion;
              nombre_titulacion = t.titulacion_castellano;
              listTitulaciones.close();
            }}>
            <Text>{t.titulacion_castellano}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Titulación:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if nombre_titulacion}
            {nombre_titulacion}
          {:else}
            <span class="empty">Selecciona una titulación</span>
          {/if}
        </span>
        <Button on:click={() => listTitulaciones.open()}>
          <div class="material-icons">search</div>
          <Label>Titulaciones</Label>
        </Button>
      </div>
    </div>

    <div class="actions">
      <Actions>
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={añadeoferta}>
            <Label>
              Salvar
            </Label>
          </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nueva Oferta</Label>
</Button>