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
  import TablaFiltrable from "../components/TablaFiltrable.svelte";
  import NuevoEstudiante from "../components/NuevoEstudiante.svelte";
  import AñadirPeriodoForm from "../components/AñadirPeriodoForm.svelte";
  import SelectorPeriodo from "../components/SelectorPeriodo.svelte";
  import MenuPantallas from "../components/MenuPantallas.svelte";

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

//La función mostrarestudiante devuelve true cuando encuentra un acuerdo académico con los 
//mismos periodo académico y estudiante introducidos como parámetros.

  function mostrarestudiante(periodo, estudiante, acuerdos) {
    for (let i = 0; i < acuerdos.length; i++) {
      if (estudiante.id_estudiante === acuerdos[i].estudiante &&
        acuerdos[i].periodo_academico === periodo) {
        return true;
      }
    }
    return false;
  }

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

  #titulo {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 20pt;
    color: black;
    text-transform: uppercase;
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

  <MenuPantallas menu="asignaturas,ofertas,universidades" />

  <!-------- Titulo de la pantalla ----------->

  <div id="titulo">Estudiantes Incoming</div>
  <div />
</div>

<div id="contenedor">

  <!----- Formulario Añadir Periodo ---------->

  <AñadirPeriodoForm
    {periodos}
    onModificado={nuevoperiodo => { periodos = [...periodos, nuevoperiodo];}} />

  <!------- Selector de Periodos ------------->

  <SelectorPeriodo {periodos} onSeleccionado={seleccionarEnCaliente}/>

  <!------ Formulario Nuevo Estudiante ------->

  <NuevoEstudiante 
    {universidades} 
    {periodos} 
    {titulaciones} 
    {estudiantes} 
    onEstudiante={(nuevoestudiante) => { estudiantes = [...estudiantes, nuevoestudiante]; }}
    onAcuerdo={(nuevoacuerdo) => { acuerdos = [...acuerdos, nuevoacuerdo]; }}
  />

</div>

{#if periodo_seleccionado.id_periodo === ''}
  <!------ Tabla con todos los estudiantes de la Base de Datos ------->

  <TablaFiltrable
    tabla={estudiantes}
    campos={[{ name: 'apellidos', show: true, 
               render: obj => `<a href="/estudiante/${obj.id_estudiante}">${obj.apellidos}</a>`, 
               filter: true }, 
             { name: 'nombre', show: true, filter: true }, 
             { name: 'nombre_universidad', nombre: 'universidad', show: true, filter: true }, 
             { name: 'pais', nombre: 'país', show: true, filter: true }]} />
{:else}
  <!--- Tabla con los estudiantes de la Base de Datos que corresponden al Periodo seleccionado --->

  <TablaFiltrable
    tabla={estudiantes.filter(est =>
      mostrarestudiante(periodo_seleccionado.id_periodo, est, acuerdos)
    )}
    campos={[{ name: 'apellidos', show: true, 
               render: obj => `<a href="/estudiante/${obj.id_estudiante}">${obj.apellidos}</a>`, 
               filter: true }, 
             { name: 'nombre', show: true, filter: true }, 
             { name: 'nombre_universidad', nombre: 'universidad', show: true, filter: true }, 
             { name: 'pais', nombre: 'país', show: true, filter: true }]} />
{/if}
