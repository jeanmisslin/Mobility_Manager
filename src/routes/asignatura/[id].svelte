<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let asignatura = await this.fetch(`/asignatura/${id}.json`).then(body =>
      body.json()
    );
    let { ofertas } = await this.fetch(`/titulaciones/ofertas.json`).then(
      body => body.json()
    );
    let { periodos } = await this.fetch(`periodos.json`).then(body =>
      body.json()
    );
    let { titulaciones } = await this.fetch(`titulaciones.json`).then(body =>
      body.json()
    );
    return {
      asignatura,
      ofertas,
      periodos,
      titulaciones
    };
  }
</script>

<script>
  export let asignatura;
  export let ofertas;
  export let periodos;
  export let titulaciones;

  import ModificaAsignatura from "../../components/ModificaAsignatura.svelte";
  import ModificaOferta from "../../components/ModificaOferta.svelte";
  import AñadirOferta from "../../components/AñadirOferta.svelte";
  import MostrarPlazasOfertas from "../../components/MostrarPlazasOfertas.svelte";

  let {
    codigo_asignatura,
    nombre_catalan,
    nombre_castellano,
    nombre_ingles,
    idioma,
    ects,
    plan_de_estudios_catalan,
    plan_de_estudios_castellano,
    plan_de_estudios_ingles
  } = asignatura;
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

  #ofertas {
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
  <div id="title">{nombre_ingles}</div>
</div>

<div id="options">
  <div id="data">
    <a href="../">ESTUDIANTES</a>
    <a href="/asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div id="contenido">DATOS DE LA ASIGNATURA</div>

<ModificaAsignatura {asignatura} />

<div id="ofertas">OFERTAS</div>

<AñadirOferta asignatura={codigo_asignatura} {titulaciones} {periodos} />

{#each periodos as p}
  <MostrarPlazasOfertas {ofertas} asignatura={codigo_asignatura} periodo={p} {titulaciones}/>
{/each}
