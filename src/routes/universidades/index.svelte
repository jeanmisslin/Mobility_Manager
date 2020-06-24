<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [ this.fetch(`universidades.json`).then(body => body.json()) ];
    let [ { universidades } ] = await Promise.all(fetch_endpoints);
    return { universidades };
  }
</script>

<script>
  export let universidades;

  import TablaFiltrable from "../../components/TablaFiltrable.svelte";
  import NuevaUniversidad from "../../components/NuevaUniversidad.svelte";
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

<MenuPantallas menu="estudiantes incoming,asignaturas,ofertas" />

<!-------- Titulo de la pantalla ----------->

  <div id="titulo">Universidades</div>
  <div />
</div>

<!------ Formulario Nueva Universidad ------->

  <NuevaUniversidad {universidades} 
  onUniversidad={(nuevauniversidad) => { universidades = [...universidades, nuevauniversidad]; }} />

<!------ Tabla con todas las universidades de la Base de Datos ------->

  <TablaFiltrable
    tabla={universidades}
    campos={[{ name: 'codigo_universidad', nombre: 'codigo', show: true, filter: true },
             { name: 'nombre_universidad', nombre: 'universidad', show: true, filter: true,
               render: obj => `<a href="/universidad/${obj.id_universidad}">${obj.nombre_universidad}</a>` }, 
             { name: 'pais', show: true, filter: true }]} />


