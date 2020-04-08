<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`periodos.json`).then(body => body.json()),
      this.fetch(`ofertas.json`).then(body => body.json())
    ];
    let [
      { periodos },
      { ofertas }
    ] = await Promise.all(fetch_endpoints);
    return {
      periodos,
      ofertas
    };
  }
</script>

<script>
  import Textfield from "@smui/textfield";
  import TablaFiltrableEstudiantes from "../../components/TablaFiltrableEstudiantes.svelte";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";

  export let periodos;
  export let ofertas;

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
    flex-direction: row;
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
              <a href="../">Estudiantes Incoming</a>
            </Text>
          </Item>
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

  <div id="title">Ofertas</div>
  <div />
</div>

<div id="contenedor">

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
          Ofertas: {periodo_seleccionado.año}-{periodo_seleccionado.año + 1} Q{periodo_seleccionado.cuatrimestre}
        {:else}
          <span class="empty">Todas las Ofertas</span>
        {/if}
      </span>
      <Button on:click={() => listPeriodos.open()}>
        <div class="material-icons">search</div>
        <Label>Periodos Académicos</Label>
      </Button>
    </div>
  </div>
</div>

{#if periodo_seleccionado.id_periodo === ''}

<!------ Tabla con todos los estudiantes de la Base de Datos ------->

  <TablaFiltrableEstudiantes
    tabla={ofertas}
    campos={[{ name: 'asignatura', nombre: 'código', show: true, render: obj => `<a href="/asignatura/${obj.asignatura}">${obj.asignatura}</a>`, filter: true }, 
             { name: 'nombre_ingles', nombre: 'título', show: true, filter: true }, 
             { name: 'nombre_castellano', filter: true },
             { name: 'año', show: true },
             { name: 'cuatrimestre', nombre: 'Q', show: true},
             { name: 'plazas_ofertadas', nombre: 'ofertadas', show: true },
             { name: 'plazas_disponibles', nombre: 'disponibles', show: true },
             { name: 'plazas_concedidas', nombre: 'concedidas', show: true }, 
             { name: 'plazas_solicitadas', nombre: 'solicitadas', show: true }]} />
{:else}

<!--- Tabla con los estudiantes de la Base de Datos que corresponden al Periodo seleccionado --->

  <TablaFiltrableEstudiantes
    tabla={ofertas.filter(per => per.periodo_academico === periodo_seleccionado.id_periodo)}
    campos={[{ name: 'asignatura', nombre: 'código', show: true, render: obj => `<a href="/asignatura/${obj.asignatura}">${obj.asignatura}</a>`, filter: true }, 
             { name: 'nombre_ingles', nombre: 'título', show: true, filter: true }, 
             { name: 'nombre_castellano', filter: true },
             { name: 'plazas_ofertadas', nombre: 'ofertadas', show: true },
             { name: 'plazas_disponibles', nombre: 'disponibles', show: true },
             { name: 'plazas_concedidas', nombre: 'concedidas', show: true }, 
             { name: 'plazas_solicitadas', nombre: 'solicitadas', show: true }]} />
{/if}

