<script>
  export let titulaciones;
  export let oferta;
  export let onModificado;

  import Textfield from "@smui/textfield";
  import IconButton from "@smui/icon-button";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let ListTitulaciones;

  function listTitulaciones() {}

  let array;
  $: array = oferta.titulacion.split(",");

  let message;
  
  let añade = "";

  let modificacion = {
    oferta: oferta.id_oferta,
    nombre_titulacion: "",
    titulacion: oferta.titulacion
  };

  function encontrartitulacion(a, t) {
    let i;
    for (i = 0; i != a.length; i++)
      if (a[i] === t) {
        return true;
      }
    return false;
  }

  let filtroTitulaciones = "";

  $: TitulacionesFiltradas = titulaciones.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.titulacion_catalan, filtroTitulaciones) ||
      strIn(e.titulacion_castellano, filtroTitulaciones) ||
      strIn(e.titulacion_ingles, filtroTitulaciones)
    );
  });

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
        onModificado({...modificacion});
      });
  }

  function ejecutarambas() {
    modificacion.titulacion = modificacion.titulacion + "," + añade;
    modificaoferta();
    modificacion.nombre_titulacion = "";
    añade = "";
  }
</script>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Añadir Titulación</Label>
  </Title>
  <Content>
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
          {#if !encontrartitulacion(array, t.codigo_titulacion)}
            <Item
              on:click={() => {
                añade = t.codigo_titulacion;
                modificacion.nombre_titulacion = t.titulacion_castellano;
                listTitulaciones.close();
              }}>
              <Text>{t.titulacion_castellano}</Text>
            </Item>
          {/if}
        {/each}
      </Content>
    </Dialog>

    <div>
      Titulación:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if modificacion.nombre_titulacion}
            {modificacion.nombre_titulacion}
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
        <Button color="secondary" variant="raised" on:click={ejecutarambas}>
          <Label>Salvar</Label>
        </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Añadir Titulación</Label>
</Button>
