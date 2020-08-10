<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [ this.fetch(`/endpoints/asignaturas.json`).then(body => body.json()) ];
    let [ { asignaturas } ] = await Promise.all(fetch_endpoints);
    return { asignaturas };
  }
</script>

<script>
  export let asignaturas;

  import TablaFiltrable from "../../components/TablaFiltrable.svelte";
  import NuevaAsignatura from "../../components/NuevaAsignatura.svelte";
  import MenuPantallas from "../../components/MenuPantallas.svelte";
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

  #titulo {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 20pt;
    color: black;
    text-transform: uppercase;
  }

</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

  <!-- Menú con los links al resto de pantallas -->

  <MenuPantallas menu="estudiantes incoming,ofertas,universidades" />

  <!------- Titulo de la pantalla ----------->

  <div id="titulo">ASIGNATURAS</div>
  <div />
</div>

<!------ Formulario Nueva Asignatura ------->

  <NuevaAsignatura {asignaturas}
  onAsignatura={(nuevaasignatura) => { asignaturas = [...asignaturas, nuevaasignatura]; }} />

<!------ Tabla con todas las asignaturas de la Base de Datos ------->

<TablaFiltrable
  tabla={asignaturas}
  campos={[
    { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true }, 
    { name: 'nombre_ingles', nombre: 'título', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.id_asignatura}">${obj.nombre_ingles}</a>` }, 
    { name: 'nombre_catalan', filter: true }, 
    { name: 'nombre_castellano', filter: true }, 
    { name: 'idioma', show: true, filter: true }, 
    { name: 'ects', show: true }
  ]} />
