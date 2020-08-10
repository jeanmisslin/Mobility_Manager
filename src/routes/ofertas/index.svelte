<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`/endpoints/periodos.json`).then(body => body.json()),
      this.fetch(`/endpoints/ofertas.json`).then(body => body.json())
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
  export let periodos;
  export let ofertas;

  import TablaFiltrable from "../../components/TablaFiltrable.svelte";
  import SelectorPeriodo from "../../components/SelectorPeriodo.svelte";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  let periodo_seleccionado = {
    id_periodo: "",
    año: "",
    cuatrimestre: ""
  };

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

  <div id="titulo">Ofertas</div>
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

