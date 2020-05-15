<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let universidad = await this.fetch(`/universidad/${id}.json`).then(body => body.json());
    let universidades = await this.fetch(`universidades.json`).then(body => body.json());
    return { universidad, universidades };
  }
</script>

<script>
  export let universidad;
  export let universidades;

  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Separator, Text, PrimaryText, SecondaryText, Graphic } from "@smui/list";
  import MostrarOfertasForm from "../../components/MostrarOfertasForm.svelte";
  import DatosUniversidad from "../../components/DatosUniversidad.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  let menu;

  function modificarUniversidadEnCaliente(uni) {
    universidad.codigo_universidad = uni.codigo_universidad;
    universidad.nombre_universidad = uni.nombre_universidad;
    universidad.pais = uni.pais;
  }
</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 10px;
    height: 80px;
    width: 100%;
    background-color: white;
    border: 1px solid black;
  }

  #title {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 16pt;
    color: black;
    text-transform: uppercase;
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

<!-- Menú con los links al resto de pantallas -->

<MenuPantallas menu="estudiantes incoming,asignaturas,ofertas,universidades" />

<!------- Titulo de la pantalla ----------->

  <div id="title">{universidad.nombre_universidad}</div>
  <div></div>
</div>

<!------ Datos Universidad ------->

  <DatosUniversidad {universidad} {universidades} onModificado={modificarUniversidadEnCaliente}/>

<!--- Formulario Modifica Universidad

  <ModificaUniversidadForm {universidad} /> --->