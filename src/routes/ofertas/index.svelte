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
  import TablaFiltrable from "../../components/TablaFiltrable.svelte";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import SelectorPeriodo from "../../components/SelectorPeriodo.svelte";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

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

  function seleccionarEnCaliente(periodo){
    periodo_seleccionado = periodo;
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

<MenuPantallas menu="estudiantes incoming,asignaturas,universidades" />

<!-------- Titulo de la pantalla ----------->

  <div id="title">Ofertas</div>
  <div />
</div>

<div id="contenedor">

<!------- Selector de Periodos ------------->

<SelectorPeriodo {periodos} onSeleccionado={seleccionarEnCaliente}/>
 
</div>

{#if periodo_seleccionado.id_periodo === ''}

<!------ Tabla con todos los estudiantes de la Base de Datos ------->

  <TablaFiltrable
    tabla={ofertas}
    campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true }, 
             { name: 'nombre_ingles', nombre: 'título', show: true, render: obj => `<a href="/asignatura/${obj.id_asignatura}">${obj.nombre_ingles}</a>`, filter: true }, 
             { name: 'nombre_castellano', filter: true },
             { name: 'año', show: true, centrado: true },
             { name: 'cuatrimestre', nombre: 'Q', show: true,  centrado: true},
             { name: 'plazas_ofertadas', nombre: 'ofertadas', show: true, centrado: true },
             { name: 'plazas_disponibles', nombre: 'disponibles', show: true, centrado: true },
             { name: 'plazas_concedidas', nombre: 'concedidas', show: true, centrado: true }, 
             { name: 'plazas_solicitadas', nombre: 'solicitadas', show: true, centrado: true }
             ]} />
{:else}

<!--- Tabla con los estudiantes de la Base de Datos que corresponden al Periodo seleccionado --->

  <TablaFiltrable
    tabla={ofertas.filter(per => per.periodo_academico === periodo_seleccionado.id_periodo)}
    campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true }, 
             { name: 'nombre_ingles', nombre: 'título', show: true, render: obj => `<a href="/asignatura/${obj.id_asignatura}">${obj.nombre_ingles}</a>`, filter: true }, 
             { name: 'nombre_castellano', filter: true },
             { name: 'plazas_ofertadas', nombre: 'ofertadas', show: true, centrado: true },
             { name: 'plazas_disponibles', nombre: 'disponibles', show: true, centrado: true },
             { name: 'plazas_concedidas', nombre: 'concedidas', show: true, centrado: true }, 
             { name: 'plazas_solicitadas', nombre: 'solicitadas', show: true, centrado: true }
             ]} />
{/if}

