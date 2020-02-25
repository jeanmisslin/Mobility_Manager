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
  import HelperText from "@smui/textfield/helper-text/index";
  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";

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
    margin-top: 47px;
    margin-bottom: 0px;
    margin-left: 6px;
    margin-right: 6px;
  }

  .icon {
    color: rgb(255, 255, 255);
    width: 15px;
    height: 15px;
    margin-right: 5px;
  }

  #botones {
    height: 33px;
    width: 100%;
    margin-left: 5px;
    margin-bottom: 7px;
    margin-top: 5px;
  }

  #contenedorvalores {
    border: 1px solid rgb(124, 124, 124);
    justify-content: center;
    height: 80px;
    width: 90%;
    margin-left: 6px;
    margin-right: 5px;
    margin-top: 2px;
  }

  #valorseleccionado {
    justify-content: center;
    margin-top: 5px;
    height: 90px;
    width: 90%;
    margin-left: 13px;
  }

  #boton {
    margin-top: 15px;
    margin-bottom: 5px;
  }

  #contenedor {
    display: flex;
    flex-direction: row;
    align-content: flex-start;
    align-items: flex-start;
    justify-content: flex-start;
    width: 100%;
    height: 380px;
  }

  #camposdetexto {
    display: flex;
    flex-direction: column;
    width: 50%;
    height: 100%;
  }

  #dialogos {
    display: flex;
    flex-direction: column;
    width: 50%;
    height: 100%;
  }

  #margencampos {
    align-content: center;
    justify-content: center;
    text-align: center;
    width: 100%;
    height: 0px;
  }

  #margendialogos {
    align-content: center;
    justify-content: center;
    text-align: center;
    width: 100%;
    height: 0px;
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
    <div id="contenedor">
      <div id="dialogos">
        <div id="margendialogos" />

        <!--------------- Periodos Académicos ----------------->

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
            <Button
              color="secondary"
              variant="raised"
              on:click={() => listPeriodos.open()}>
              <div class="icon">
                <IoIosSearch />
              </div>
              <Label>Periodo Académico</Label>
            </Button>
          </div>
          <div id="contenedorvalores">
            <div id="valorseleccionado">{nuevoacuerdo.año}</div>
          </div>
        </div>

        <!--------------- Universidades ----------------->

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
            <Button
              color="secondary"
              variant="raised"
              on:click={() => listUniversidades.open()}>
              <div class="icon">
                <IoIosSearch />
              </div>
              <Label>Universidad</Label>
            </Button>
          </div>
        </div>
        <div id="contenedorvalores">
          <div id="valorseleccionado">{nuevoestudiante.nombre_universidad}</div>
        </div>

        <!--------------- Titulaciones ----------------->

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
            <Button
              color="secondary"
              variant="raised"
              on:click={() => listTitulaciones.open()}>
              <div class="icon">
                <IoIosSearch />
              </div>
              <Label>Titulación</Label>
            </Button>
          </div>
          <div id="contenedorvalores">
            <div id="valorseleccionado">{nuevoacuerdo.nombre_titulacion}</div>
          </div>
        </div>
      </div>

      <!--------------- Campos de Texto ----------------->

      <div id="camposdetexto">
        <div id="margencampos" />
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
  </div>
</Dialog>

<div id="boton">
  <Button variant="raised" on:click={() => dialog.open()}>
    <Label>Nuevo Estudiante</Label>
  </Button>
</div>
