<script>
  export let universidades;
  export let periodos;
  export let titulaciones;
  export let estudiantes;
  export let onEstudiante;
  export let onAcuerdo;

  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";
  import Warning from "./Warning.svelte";

  let dialog;

  function listUniversidades() {}
  function listPeriodos() {}
  function listTitulaciones() {}

  $: periodo = "";
  $: nombre_titulacion = "";

  $: nuevoestudiante = {
    id_estudiante: "",
    email: "",
    apellidos: "",
    nombre: "",
    universidad: "",
    nombre_universidad: "",
    pais: ""
  };

  $: nuevoacuerdo = {
    id_acuerdo: "",
    estudiante: "",
    titulacion: "",
    periodo_academico: "",
    estado: "Nominado/a"
  };

  let warning = "Ya existe un/a estudiante con el mismo email";

  let message;

  let filtro = "";

  $: universidadesFiltradas = universidades.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_universidad, filtro) ||
      strIn(e.nombre_universidad, filtro) ||
      strIn(e.pais, filtro)
    );
  });

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

  function existe(e) {
    let introducido = estudiantes.find(est => est.email === e);
    return introducido;
  }

  async function añadirestudiante() {
    const body = await fetch(`nuevoestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoestudiante)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "nuevoestudiante saved";
      return json.id_estudiante;
    }
  }

  async function añadiracuerdo() {
    const body = await fetch(`nuevoacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        acuerdo: nuevoacuerdo,
        estudiante: nuevoestudiante
      })
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "nuevoacuerdo saved";
      return json.id_acuerdo;
    }
  }

  async function añadirambos() {
    const id_estudiante = await añadirestudiante();
    nuevoestudiante.id_estudiante = id_estudiante;
    nuevoacuerdo.estudiante = id_estudiante;
    const id_acuerdo = await añadiracuerdo();
    nuevoacuerdo.id_acuerdo = id_acuerdo;
    if (onEstudiante) {
      onEstudiante({...nuevoestudiante});
    }
    if (onAcuerdo) {
      onAcuerdo({...nuevoacuerdo});
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
    <Label>Nuevo Estudiante</Label>
  </Title>
  <Content>
    <Textfield
      label="Apellidos"
      style="width: 100%"
      bind:value={nuevoestudiante.apellidos} />
    <Textfield
      label="Nombre"
      style="width: 100%"
      bind:value={nuevoestudiante.nombre} />
    <Textfield
      label="Email"
      type="email"
      style="width: 100%"
      updateInvalid
      bind:value={nuevoestudiante.email}
      input$autocomplete="email" />
    <HelperText validationMsg>No es una dirección de email válida.</HelperText>
    
    {#if existe(nuevoestudiante.email)}
      <div id="warning">{warning}</div> 
    {/if}

    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <!--------------- Universidades ----------------->
    <Dialog
      bind:this={listUniversidades}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield label="Buscador" style="width: 100%" bind:value={filtro} />
      </Title>
      <Content component={List} id="list-content">
        {#each universidadesFiltradas as u}
          <Item
            on:click={() => {
              nuevoestudiante.universidad = u.id_universidad;
              nuevoestudiante.nombre_universidad = u.nombre_universidad;
              nuevoestudiante.pais = u.pais;
              listUniversidades.close();
            }}>
            <Text>{u.nombre_universidad}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Universidad:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if nuevoestudiante.nombre_universidad}
            {nuevoestudiante.nombre_universidad}
          {:else}
            <span class="empty">Selecciona una universidad</span>
          {/if}
        </span>
        <Button on:click={() => listUniversidades.open()}>
          <div class="material-icons">search</div>
          <Label>Universidades</Label>
        </Button>
      </div>
    </div>

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
              periodo =  mostrarperiodo(p.año, p.cuatrimestre);
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
              periodo =  mostrarperiodo(p.año, p.cuatrimestre);
              listPeriodos.close();
            }}>
            <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
          </Item>
        {/each}
        {/if}
      </Content>
    </Dialog>

    <div>
      Periodo Académico:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if periodo}
            {periodo}
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

    <div class="actions">
      <Actions>
        {#if nuevoestudiante.apellidos === '' || nuevoestudiante.email === '' 
             || nuevoestudiante.nombre === '' || nuevoestudiante.universidad === '' 
             || nuevoacuerdo.titulacion === '' || nuevoacuerdo.periodo_academico === '' 
             || nuevoacuerdo.estado === '' || existe(nuevoestudiante.email)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={añadirambos}>
              Salvar
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nuevo Estudiante</Label>
</Button>
