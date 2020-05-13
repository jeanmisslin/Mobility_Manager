<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`asignaturas.json`).then(body => body.json())
    ];
    let [
      { asignaturas }
    ] = await Promise.all(fetch_endpoints);
    return {
      asignaturas
    };
  }
</script>

<script>
  export let asignaturas;

  import TablaFiltrableEstudiantes from "../../components/TablaFiltrableEstudiantes.svelte";
  import NuevaAsignatura from "../../components/NuevaAsignatura.svelte";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  let menu;

</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 0px;
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

  #form {
    width: 100%;
    height: 40px;
    margin-top: 10px;
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

  <!-- Menú con los links al resto de pantallas -->

  <MenuPantallas menu="estudiantes incoming,ofertas,universidades" />

  <!------- Titulo de la pantalla ----------->

  <div id="title">ASIGNATURAS</div>
  <div />
</div>

<!------ Formulario Nueva Asignatura ------->

<div id="form">
  <NuevaAsignatura {asignaturas} />
</div>

<!------ Tabla con todas las asignaturas de la Base de Datos ------->

<TablaFiltrableEstudiantes
  tabla={asignaturas}
  campos={[
    { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true }, 
    { name: 'nombre_ingles', nombre: 'título', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.id_asignatura}">${obj.nombre_ingles}</a>` }, 
    { name: 'nombre_catalan', filter: true }, 
    { name: 'nombre_castellano', filter: true }, 
    { name: 'idioma', show: true, filter: true }, 
    { name: 'ects', show: true }
  ]} />
