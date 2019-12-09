<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`/titulaciones/ofertas.json`).then(body => body.json()),
      this.fetch(`titulaciones.json`).then(body => body.json())
    ];
    let [{ ofertas }, { titulaciones }] = await Promise.all(fetch_endpoints);
    console.log(ofertas);
    return {
      ofertas,
      titulaciones
    };
  }
</script>

<script>
  import Titulacion from "../../components/Titulacion.svelte";
  import Titulaciones from "../../components/Titulaciones.svelte";

  export let ofertas;
  export let titulaciones;

  let codigo = '';

  let { codigo_titulacion } = titulaciones;

  let { asignatura, titulacion } = ofertas;
</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 10px;
    height: 50px;
    width: 100%;
    background-color: rgb(117, 182, 226);
    border: 1px solid black;
  }

  #title {
    display: flex;
    font-weight: 500;
    font-size: 20pt;
    color: black;
    text-transform: uppercase;
  }

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 17px;
    height: 40px;
    width: 200px;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
    color: black;
    border: 1px solid black;
  }

  #options {
    flex-direction: row;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    border-bottom: groove;
    height: 25px;
    width: 100%;
    color: black;
  }

  #data {
    margin-left: 15px;
    margin-bottom: 10px;
    margin-top: 10px;
  }

</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">
  <div id="title">ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="options">
  <div id="data">
    <a href="../">ESTUDIANTES</a>
    <a href="../asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div id="contenido">TITULACIONES</div>

<Titulaciones {ofertas} {titulaciones}/>