<script>
  export let universidades;
  export let periodos;
  export let titulaciones;

  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";
  import IoIosSearch from "svelte-icons/io/IoIosSearch.svelte";

  let dialog;
  let ListUniversidades;
  let ListPeriodos;

  function listUniversidades() {}
  function listPeriodos() {}
  function listTitulaciones() {}

  export let nuevoestudiante = {
    open: false,
    email: "",
    apellidos: "",
    nombre: "",
    universidad: "",
    nombre_universidad: "Selecciona una universidad"
  };

  export let nuevoacuerdo = {
    estudiante: "",
    titulacion: "",
    periodo_academico: "",
    estado: "Nominado/a",
    año: "Selecciona un periodo académico",
    cuatrimestre: "",
    nombre_titulacion: "Selecciona una titulación"
  };

  let message;

  let filtro = "";

  $: universidadesFiltradas = universidades.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_universidad, filtro) ||
      strIn(e.universidad, filtro) ||
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

  function mostrarperiodo(año, cuatrimestre) {
    let a = año.toString();
    let periodo = a + "-" + (año + 1) + " Q" + cuatrimestre;
    return periodo;
  }

  function añadirestudiante() {
    fetch(`nuevoestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoestudiante)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoestudiante saved";
        }
      });
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

  function añadirambos() {
    añadirestudiante();
    añadiracuerdo();
  }
</script>

<style>
  #campo {
    margin-top: 6px;
    margin-bottom: 6px;
    margin-left: 6px;
    margin-right: 6px;
  }

  .icon {
    color: rgb(88, 62, 62);
    width: 15px;
    height: 15px;
    margin-right: 5px;
  }

  #botones {
    height: 33px;
    width: 100%;
    margin-left: 5px;
  }

  #contenedorvalores {
    border: 1px solid rgb(124, 124, 124);
    justify-content: center;
    height: 70px;
    width: 380px;
    margin-left: 6px;
    margin-right: 5px;
    margin-top: 2px;
  }

  #valorseleccionado {
    justify-content: center;
    margin-top: 5px;
    height: 60px;
    width: 370px;
    margin-left: 13px;
  }
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title id="dialog-title">
    <Label>FORMULARIO NUEVO ESTUDIANTE</Label>
  </Title>
  <div id="formulariodialog">
    <div id="camposdetexto">
      <div id="campo">
        <Textfield
          fullwidth
          textarea
          class="shaped-outlined"
          variant="outlined"
          bind:value={nuevoestudiante.apellidos}
          label="Apellidos"
          input$aria-controls="helper-text-shaped-outlined-a"
          input$aria-describedby="helper-text-shaped-outlined-a" />
      </div>
      <div id="campo">
        <Textfield
          fullwidth
          textarea
          class="shaped-outlined"
          variant="outlined"
          bind:value={nuevoestudiante.nombre}
          label="Nombre"
          input$aria-controls="helper-text-shaped-outlined-a"
          input$aria-describedby="helper-text-shaped-outlined-a" />
      </div>
      <div id="campo">
        <Textfield
          fullwidth
          textarea
          class="shaped-outlined"
          variant="outlined"
          bind:value={nuevoestudiante.email}
          label="Email"
          input$aria-controls="helper-text-shaped-outlined-a"
          input$aria-describedby="helper-text-shaped-outlined-a" />
      </div>
    </div>
    <div id="dialogos">
      <div id="dialogo">
        <Dialog
          bind:this={listUniversidades}
          aria-labelledby="list-title"
          aria-describedby="list-content">
          <Title id="list-title">
            <input
              type="text"
              size="12"
              bind:value={filtro}
              placeholder="Buscador"
              title="Type in a name" />
          </Title>
          <Content component={List} id="list-content">
            {#each universidadesFiltradas as u}
              <Item
                on:click={() => {
                  nuevoestudiante.universidad = u.codigo_universidad;
                  nuevoestudiante.nombre_universidad = u.universidad;
                  listUniversidades.close();
                }}>
                <Text>{u.universidad}</Text>
              </Item>
            {/each}
          </Content>
        </Dialog>

        <div id="botones">
          <Button on:click={() => listUniversidades.open()}>
            <div class="icon">
              <IoIosSearch />
            </div>
            <Label>Universidades</Label>
          </Button>
        </div>
      </div>
      <div id="contenedorvalores">
        <div id="valorseleccionado">{nuevoestudiante.nombre_universidad}</div>
      </div>
      <div id="dialogo">
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
                  nuevoacuerdo.titulacion = t.codigo_titulacion;
                  nuevoacuerdo.nombre_titulacion = t.titulacion_ingles;
                  listTitulaciones.close();
                }}>
                <Text>{t.titulacion_ingles}</Text>
              </Item>
            {/each}
          </Content>
        </Dialog>

        <div id="botones">
          <Button on:click={() => listTitulaciones.open()}>
            <div class="icon">
              <IoIosSearch />
            </div>
            <Label>Titulaciones</Label>
          </Button>
        </div>
        <div id="contenedorvalores">
          <div id="valorseleccionado">{nuevoacuerdo.nombre_titulacion}</div>
        </div>
      </div>
      <div id="dialogo">
        <Dialog
          bind:this={listPeriodos}
          aria-labelledby="list-title"
          aria-describedby="list-content">
          <Title id="list-title">Periodos Académicos</Title>
          <Content component={List} id="list-content">
            {#each periodos as p}
              <Item
                on:click={() => {
                  nuevoacuerdo.periodo_academico = p.id_periodo;
                  nuevoacuerdo.año = mostrarperiodo(p.año, p.cuatrimestre);
                  nuevoacuerdo.cuatrimestre = p.cuatrimestre;
                  listPeriodos.close();
                }}>
                <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
              </Item>
            {/each}
          </Content>
        </Dialog>

        <div id="botones">
          <Button on:click={() => listPeriodos.open()}>
            <div class="icon">
              <IoIosSearch />
            </div>
            <Label>Periodos Académicos</Label>
          </Button>
        </div>
        <div id="contenedorvalores">
          <div id="valorseleccionado">{nuevoacuerdo.año}</div>
        </div>
      </div>
    </div>
  </div>
  <Actions>
    {#if nuevoestudiante.apellidos === '' || nuevoestudiante.email === '' || nuevoestudiante.nombre === '' || nuevoestudiante.universidad === '' || nuevoacuerdo.titulacion === '' || nuevoacuerdo.periodo_academico === '' || nuevoacuerdo.estado === ''}
      <Button color="secondary" variant="raised">
        <Label>Cancel</Label>
      </Button>
    {:else}
      <Button color="secondary" variant="raised">
        <Label>Cancel</Label>
      </Button>
      <Button color="secondary" variant="raised" on:click={añadirambos}>
        <Label>
          <a href="/estudiante/{nuevoestudiante.email}">Salvar</a>
        </Label>
      </Button>
    {/if}
  </Actions>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nuevo Estudiante</Label>
</Button>
