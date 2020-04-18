<script>
  export let periodos;
  export let estudiante;
  export let titulaciones;
  export let acuerdos;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let ListUniversidades;
  let ListPeriodos;

  let menuSurface;

  function listUniversidades() {}
  function listPeriodos() {}
  function listTitulaciones() {}

  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado/a`];

  export let nuevoacuerdo = {
    open: false,
    titulacion: "",
    periodo_academico: "",
    estado: "Nominado/a",
    año: "",
    cuatrimestre: "",
    nombre_titulacion: ""
  };

  export let nuevoestudiante = {
    email: estudiante
  };

  let warning = "El/la estudiante ya dispone de un acuerdo académico para el periodo seleccionado";

  let message;

  function existe(a) {
    let introducido = acuerdos.find(acu => acu.periodo_academico === parseInt(a));
    return introducido;
  }

  function añadiracuerdo() {
    fetch(`nuevoacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        acuerdo: nuevoacuerdo,
        estudiante: nuevoestudiante
      })
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoacuerdo saved";
        }
      });
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

  let filtroPeriodos = "";

  $: PeriodosFiltrados = periodos.filter(e => e.año === parseInt(filtroPeriodos));

  function mostrarperiodo(año, cuatrimestre) {
    let a = año.toString();
    let periodo = a + "-" + (año + 1) + " Q" + cuatrimestre;
    return periodo;
  }

  function ruta(codigo){
    let ruta = "/estudiante/";
    ruta = ruta + codigo;
    return ruta;
  }

  function ambas(){
    añadiracuerdo();
    location.reload(true);
  }
</script>

<style>
  .seleccion {
    display: flex;
    flex-direction: row;
    align-items: center;
    margin-bottom: 1.3rem;
  }
  .valor-seleccionado {
    flex: 1;
    color: black;
    font-size: 1.1rem;
  }
  .actions {
    margin-top: 2em;
  }
  .empty {
    color: rgb(156, 156, 156);
    font-style: italic;
    font-size: 0.9rem;
  }
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
    <Label>Nuevo Acuerdo</Label>
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
          <Item
            on:click={() => {
              nuevoacuerdo.titulacion = t.codigo_titulacion;
              nuevoacuerdo.nombre_titulacion = t.titulacion_castellano;
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
          {#if nuevoacuerdo.nombre_titulacion}
            {nuevoacuerdo.nombre_titulacion}
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

    <!--------------- Periodos ----------------->

    <Dialog
      bind:this={listPeriodos}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield label="Buscador" style="width: 100%" bind:value={filtroPeriodos} />
      </Title>
      <Content component={List} id="list-content">
        {#if filtroPeriodos === ""}
        {#each periodos as p}
          <Item
            on:click={() => {
              nuevoacuerdo.periodo_academico = p.id_periodo;
              nuevoacuerdo.año = p.año;
              nuevoacuerdo.cuatrimestre = p.cuatrimestre;
              listPeriodos.close();
            }}>
            <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
          </Item>
        {/each}
        {:else}
        {#each PeriodosFiltrados as p}
          <Item
            on:click={() => {
              nuevoacuerdo.periodo_academico = p.id_periodo;
              nuevoacuerdo.año = p.año;
              nuevoacuerdo.cuatrimestre = p.cuatrimestre;
              listPeriodos.close();
            }}>
            <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
          </Item>
        {/each}
        {/if}
      </Content>
    </Dialog>

    <div>
      Periodo Acdémico:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if nuevoacuerdo.año}
            {nuevoacuerdo.año}-{nuevoacuerdo.año+1} Q{nuevoacuerdo.cuatrimestre}
          {:else}
            <span class="empty">Selecciona un periodo</span>
          {/if}
        </span>
        <Button on:click={() => listPeriodos.open()}>
          <div class="material-icons">search</div>
          <Label>Periodos Académicos</Label>
        </Button>
      </div>
    </div>
    {#if existe(nuevoacuerdo.periodo_academico)}
      <div id="warning">{warning}</div>
    {/if}

    <div class="actions">
      <Actions>
      {#if nuevoacuerdo.periodo_academico === '' || nuevoacuerdo.titulacion === ''
           || existe(nuevoacuerdo.periodo_academico)}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
      {:else}
        <Button color="secondary" variant="raised">
          <Label>Cancel</Label>
        </Button>
        <Button color="secondary" variant="raised" on:click={() => ambas()}>
          <Label>Salvar</Label>
        </Button>
      {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nuevo Acuerdo</Label>
</Button>