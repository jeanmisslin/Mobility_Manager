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
    let { ofertas } = await this.fetch(`../titulaciones/ofertas.json`).then(
      body => body.json()
    );
    let { periodos } = await this.fetch(`periodos.json`).then(body =>
      body.json()
    );
    let { asignaciones } = await this.fetch(`asignaciones.json`).then(body =>
      body.json()
    );
    return {
      estudiante,
      universidades,
      titulaciones,
      ofertas,
      asignaciones,
      periodos
    };
  }
</script>

<script>
  import ModificaEstudiante from "../../components/ModificaEstudiante.svelte";
  import ModificaAcuerdo from "../../components/ModificaAcuerdo.svelte";
  import TablaFiltrableComponentes from "../../components/TablaFiltrableComponentes.svelte";

  export let estudiante;
  export let universidades;
  export let titulaciones;
  export let ofertas;
  export let periodos;
  export let asignaciones;

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

  #solicitadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 50%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }

  #recomendadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 50%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }

  #ofertadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 50%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
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

<ModificaEstudiante {estudiante} {universidades} />

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

{#each acuerdos as acuerdo}
  <ModificaAcuerdo {periodos} {acuerdo} {titulaciones} />

  <div id="solicitadas">ASIGNATURAS SOLICITADAS</div>

  <TablaFiltrableComponentes
    tabla={asignaturas}
    {acuerdo}
    componente="modificar"
    campos={[{ name: 'codigo_asignatura', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'idioma', show: true, filter: true }, { name: 'ects', show: true }, { name: 'estado_solicitud', nombre: 'estado', show: true }]} />

  <div id="recomendadas">ASIGNATURAS RECOMENDADAS</div>

  <TablaFiltrableComponentes
    tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico && ofer.titulacion === acuerdo.titulacion)}
    {acuerdo}
    componente="solicitar"
    campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'idioma', show: true, filter: true }, { name: 'ects', show: true }, { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />

  <div id="ofertadas">ASIGNATURAS OFERTADAS</div>

  <TablaFiltrableComponentes
    tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico)}
    {acuerdo}
    componente="solicitar"
    campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'titulacion_ingles', nombre: 'titulación', show: true, filter: true }, { name: 'idioma', show: true, filter: true }, { name: 'ects', show: true }, { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />
{/each}
