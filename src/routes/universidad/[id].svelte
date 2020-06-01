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

  import DatosUniversidad from "../../components/DatosUniversidad.svelte";
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

  #titulo {
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

  <div id="titulo">{universidad.nombre_universidad}</div>
  <div></div>
</div>

<!------ Datos Universidad ------->

  <DatosUniversidad {universidad} {universidades} onModificado={modificarUniversidadEnCaliente}/>

<!--- Formulario Modifica Universidad -->

  