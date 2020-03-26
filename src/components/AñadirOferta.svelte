<script>
  export let asignatura;
  export let titulaciones;
  export let periodo;

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

  let dialog;
  let ListTitulaciones;

  function listTitulaciones() {}

  let nuevaoferta

  $: nuevaoferta = {
    asignatura: asignatura,
    periodo: periodo,
    titulacion: "",
    nombre_titulacion: "",
    plazas_ofertadas: ""
  };

  let message;

  let filtroTitulaciones = "";

  $: TitulacionesFiltradas = titulaciones.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.titulacion_catalan, filtroTitulaciones) ||
      strIn(e.titulacion_castellano, filtroTitulaciones) ||
      strIn(e.titulacion_ingles, filtroTitulaciones)
    );
  });

  function añadeoferta() {
    fetch(`nuevaoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaoferta)
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

<style>
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Añadir Oferta</Label>
  </Title>
  <Content>
    <Textfield
      label="Plazas Ofertadas"
      style="width: 100%"
      bind:value={nuevaoferta.plazas_ofertadas} />
  
    <!-- Esto es un separador -->
    <div style="height: 1em" />

   <!--------------- Titulaciones ----------------->
    <Dialog
      bind:this={listTitulaciones}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <input
          type="text"
          size="12"
          bind:value={filtroTitulaciones}
          placeholder="Buscador"
          title="Type in a name" />
      </Title>
      <Content component={List} id="list-content">
        {#each TitulacionesFiltradas as t}
          <Item
            on:click={() => {
              nuevaoferta.titulacion = t.codigo_titulacion;
              nuevaoferta.nombre_titulacion = t.titulacion_ingles;
              listTitulaciones.close();
            }}>
            <Text>{t.titulacion_ingles}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Titulación:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if nuevaoferta.nombre_titulacion}
            {nuevaoferta.nombre_titulacion}
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
            <Label>Cancel</Label>
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
  <Label>Añadir Oferta</Label>
</Button>