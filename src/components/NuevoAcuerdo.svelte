<script>
  export let periodos;
  export let estudiante;
  export let titulaciones;
  export let onModificado;

  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let message;
  let warning = "El/la estudiante ya dispone de un acuerdo académico para el periodo seleccionado";

  function listPeriodos() {}
  function listTitulaciones() {}

  let acuerdos = estudiante.acuerdos;
  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado/a`];

  $: nuevoacuerdo = {
    id_acuerdo: "",
    estudiante: estudiante.id_estudiante,
    titulacion: "",
    periodo_academico: "",
    estado: "Nominado/a",
    año: "",
    cuatrimestre: "",
    titulacion_catalan: "",
    titulacion_castellano: "",
    titulacion_ingles: "",
    ciclo: ""
  };

  $: nuevoestudiante = {
    id_estudiante: estudiante.id_estudiante
  };

  function existe(a) {
    let introducido = acuerdos.find(acu => acu.periodo_academico === parseInt(a));
    return introducido;
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

  async function añadiracuerdo() {
    const body = await fetch(`nuevoacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ acuerdo: nuevoacuerdo, estudiante: nuevoestudiante})
      });
      const json = await body.json();
      if (json.error) {
          message = json.error;
          return null;
        } else {
          message = "nuevoacuerdo saved";
          return json.id_acuerdo
        }
      }

  async function ambas() {
    const id_acuerdo = await añadiracuerdo();
    nuevoacuerdo.id_acuerdo = id_acuerdo;
    if (onModificado) {
      onModificado({...nuevoacuerdo});
    }
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
              nuevoacuerdo.titulacion_catalan = t.titulacion_catalan;
              nuevoacuerdo.titulacion_castellano = t.titulacion_castellano;
              nuevoacuerdo.titulacion_ingles = t.titulacion_ingles;
              nuevoacuerdo.ciclo = t.ciclo;
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
          {#if nuevoacuerdo.titulacion_castellano}
            {nuevoacuerdo.titulacion_castellano}
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
        {#if nuevoacuerdo.periodo_academico !== '' && nuevoacuerdo.titulacion !== ''
            && !existe(nuevoacuerdo.periodo_academico)}
          <Button color="secondary" variant="raised">
            <Label>Cancel</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => ambas()}>
            <Label>Salvar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancel</Label>
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nuevo Acuerdo</Label>
</Button>