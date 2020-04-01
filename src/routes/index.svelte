<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`estudiantes.json`).then(body => body.json()),
      this.fetch(`universidades.json`).then(body => body.json()),
      this.fetch(`titulaciones.json`).then(body => body.json()),
      this.fetch(`periodos.json`).then(body => body.json()),
      this.fetch(`acuerdos.json`).then(body => body.json())
    ];
    let [
      { estudiantes },
      { universidades },
      { titulaciones },
      { periodos },
      { acuerdos }
    ] = await Promise.all(fetch_endpoints);
    return {
      estudiantes,
      universidades,
      titulaciones,
      periodos,
      acuerdos
    };
  }
</script>

<script>
  import Textfield from "@smui/textfield";
  import TablaFiltrableEstudiantes from "../components/TablaFiltrableEstudiantes.svelte";
  import NuevoEstudiante from "../components/NuevoEstudiante.svelte";
  import AñadirPeriodo from "../components/AñadirPeriodo.svelte";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";

  export let estudiantes;
  export let universidades;
  export let titulaciones;
  export let periodos;
  export let acuerdos;

  let periodo_seleccionado = {
    id_periodo: "",
    año: "",
    cuatrimestre: ""
  };

  let menu;
  let dialog;

  function listPeriodos() {}

  let message;

  let filtroPeriodos = "";

  $: PeriodosFiltrados = periodos.filter(e => e.año === parseInt(filtroPeriodos));

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

  function mostrarestudiante(periodo, estudiante, acuerdos) {
    for (let i = 0; i < acuerdos.length; i++) {
      if (
        estudiante.email === acuerdos[i].estudiante &&
        acuerdos[i].periodo_academico === periodo
      ) {
        return true;
      }
    }
    return false;
  }

  function añadirambos() {
    añadirestudiante();
    añadiracuerdo();
  }
</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 10px;
    height: 50px;
    width: 100%;
    background-color: white;
    border: 1px solid black;
  }

  #title {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 20pt;
    color: black;
    text-transform: uppercase;
  }

  #menu {
    width: 80px;
    height: 40px;
    margin-left: 10px;
    align-items: center;
  }

  #contenedor {
    display: flex;
    flex-direction: row-reverse;
    justify-content: space-between;
    width: 100%;
    height: 40px;
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

<!-- Menú con los links al resto de pantallas -->

  <div id="menu">
    <div style="min-width: 100px;">
      <Button on:click={() => menu.setOpen(true)}>Menu</Button>
      <Menu bind:this={menu}>
        <List>
          <Item>
            <Text>
              <a href="/asignaturas/">Asignaturas</a>
            </Text>
          </Item>
          <Item>
            <Text>
              <a href="/universidades/">Universidades</a>
            </Text>
          </Item>
        </List>
      </Menu>
    </div>
  </div>

<!-------- Titulo de la pantalla ----------->

  <div id="title">Estudiantes Incoming</div>
  <div />
</div>

<div id="contenedor">




<!----- Formulario Añadir Periodo ---------->

  <AñadirPeriodo {periodos}/>

<!------- Selector de Periodos ------------->

  <Dialog
    bind:this={listPeriodos}
    aria-labelledby="list-title"
    aria-describedby="list-content">
    <Title id="list-title">
      Periodos Académicos
    </Title>
    <Content component={List} id="list-content">
      <Item
        on:click={() => {
          periodo_seleccionado.id_periodo = '';
          periodo_seleccionado.año = '';
          periodo_seleccionado.cuatrimestre = '';
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
          Estudiantes: {periodo_seleccionado.año}-{periodo_seleccionado.año + 1} Q{periodo_seleccionado.cuatrimestre}
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

<!------ Formulario Nuevo Estudiante ------->

  <NuevoEstudiante {universidades} {periodos} {titulaciones} {estudiantes}/>

</div>

{#if periodo_seleccionado.id_periodo === ''}

<!------ Tabla con todos los estudiantes de la Base de Datos ------->

  <TablaFiltrableEstudiantes
    tabla={estudiantes}
    campos={[{ name: 'apellidos', show: true, render: obj => `<a href="/estudiante/${obj.email}">${obj.apellidos}</a>`, filter: true }, 
             { name: 'nombre', show: true, filter: true }, 
             { name: 'universidad', show: true, filter: true }, 
             { name: 'pais', show: true, filter: true }]} />
{:else}

<!--- Tabla con los estudiantes de la Base de Datos que corresponden al Periodo seleccionado --->

  <TablaFiltrableEstudiantes
    tabla={estudiantes.filter(est =>
      mostrarestudiante(periodo_seleccionado.id_periodo, est, acuerdos)
    )}
    campos={[{ name: 'apellidos', show: true, render: obj => `<a href="/estudiante/${obj.email}">${obj.apellidos}</a>`, filter: true }, 
             { name: 'nombre', show: true, filter: true }, 
             { name: 'universidad', show: true, filter: true }, 
             { name: 'pais', show: true, filter: true }]} />
{/if}

