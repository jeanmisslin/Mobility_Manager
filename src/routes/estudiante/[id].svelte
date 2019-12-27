<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let estudiante = await this.fetch(`/estudiante/${id}.json`).then(body =>
      body.json()
    );
    let { universidades } = await this.fetch(`universidades.json`).then(body =>
      body.json()
    );
    let { titulaciones } = await this.fetch(`titulaciones.json`).then(body =>
      body.json()
    );
    let { ofertas } = await this.fetch(`../titulaciones/ofertas.json`).then(body =>
      body.json()
    );
    let { periodos } = await this.fetch(`periodos.json`).then(body =>
      body.json()
    );
    return {
      estudiante,
      universidades,
      titulaciones,
      ofertas,
      periodos
    };
  }
</script>

<script>
  import Acuerdo from "../../components/Acuerdo.svelte";
  import ModificaEstudiante from "../../components/ModificaEstudiante.svelte";

  export let estudiante;
  export let universidades;
  export let titulaciones;
  export let ofertas;
  export let periodos;

  let {
    apellidos,
    nombre,
    universidad,
    codigo_universidad,
    pais,
    email,
    titulacion,
    id_acuerdo,
    acuerdos,
    asignaturas
  } = estudiante;
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

  #acuerdos {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
    color: black;
    border: 1px solid black;
  }

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 100%;
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
  <div id="title">{apellidos}, {nombre}</div>
</div>

<div id="options">
  <div id="data">
    <a href="../">ESTUDIANTES</a>
    <a href="/asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div id="contenido">DATOS PERSONALES</div>

<ModificaEstudiante {estudiante} {universidades}/>

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

{#each acuerdos as acuerdo}
  <Acuerdo
    {titulaciones}
    {periodos}
    {acuerdo}
    ofertas={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico)}
    asignaturas={asignaturas.filter(assig => assig.acuerdo_academico === acuerdo.id_acuerdo)} />
{/each}
