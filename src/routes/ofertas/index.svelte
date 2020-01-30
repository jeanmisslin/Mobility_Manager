<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`ofertas.json`).then(body => body.json()),
      this.fetch(`periodos.json`).then(body => body.json()),
      this.fetch(`titulaciones.json`).then(body => body.json())
    ];
    let [{ ofertas }, {periodos}, { titulaciones }] = await Promise.all(fetch_endpoints);
    return {
      ofertas,
      periodos,
      titulaciones
    };
  }
</script>

<script>
  import TablaFiltrable from "../../components/TablaFiltrable.svelte";

  export let ofertas;
  export let periodos;
  export let titulaciones;

  function encontrartitulacion(a, t) {
    let array = a.split(",");
    let i;
    for (i = 0; i != a.length; i++)
      if (array[i] === t) {
        return true;
      }
    return false;
  }
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

  #periodo {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 17px;
    height: 40px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(117, 182, 226);
    color: black;
    border: 1px solid black;
  }

  #titulacion {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 17px;
    height: auto;
    width: auto;
    font-weight: 610;
    font-size: 20px;
    background-color: rgb(198, 225, 255);
    color: black;
    border: 1px solid black;
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

<div id="contenido">OFERTAS DISPONIBLES</div>

{#each periodos as p}
<div id="periodo">Q{p.cuatrimestre} {p.año}-{p.año+1}</div>
{#each titulaciones as t}
{#if t.codigo_titulacion === 'GRESEIAAT'}
<div id="titulacion">{t.titulacion_ingles}</div>
  <TablaFiltrable tabla={ofertas.filter(ofer => ofer.titulacion.includes('GRE') && ofer.plazas_disponibles > 0 && ofer.periodo_academico === p.id_periodo)}
  campos={[
    { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
    { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
    { name: 'nombre_catalan', filter: true }, 
    { name: 'nombre_castellano', filter: true }, 
    { name: 'ects', show: true }, 
    { name: 'idioma', show: true, filter: true },
    { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />
{:else if t.codigo_titulacion === 'MUESEIAAT'}
<div id="titulacion">{t.titulacion_ingles}</div>
  <TablaFiltrable tabla={ofertas.filter(ofer => (ofer.titulacion.includes('0M') || ofer.titulacion.includes('5M'))  && ofer.plazas_disponibles > 0 && ofer.periodo_academico === p.id_periodo)}
  campos={[
    { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
    { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
    { name: 'nombre_catalan', filter: true }, 
    { name: 'nombre_castellano', filter: true }, 
    { name: 'ects', show: true }, 
    { name: 'idioma', show: true, filter: true },
    { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />
{:else}
<div id="titulacion">{t.titulacion_ingles}</div>
  <TablaFiltrable tabla={ofertas.filter(ofer => ofer.plazas_disponibles > 0 && ofer.periodo_academico === p.id_periodo && encontrartitulacion(ofer.titulacion, t.codigo_titulacion))}
  campos={[
    { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
    { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
    { name: 'nombre_catalan', filter: true }, 
    { name: 'nombre_castellano', filter: true }, 
    { name: 'ects', show: true }, 
    { name: 'idioma', show: true, filter: true },
    { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />
{/if}
{/each}
{/each}
