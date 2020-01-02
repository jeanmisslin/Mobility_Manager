<script>
  import TablaOcultableAsignaturas from "./TablaOcultableAsignaturas.svelte";
  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import TablaFiltrable from "./TablaFiltrable.svelte";
  import MostrarOferta from "./MostrarOferta.svelte";
  import MostrarAsignacion from "./MostrarAsignacion.svelte";
  import MostrarOfertas from "./MostrarOfertas.svelte";

  export let asignaturas;
  export let acuerdo;
  export let titulaciones;
  export let ofertas;
  export let periodos;
</script>

<style>
  #datos_oferta {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    margin-top: 3px;
    height: 30px;
    width: 85%;
    border: 1px solid black;
    background-color: rgb(109, 168, 216);
  }

  #codigo_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 60px;
  }

  #titulo_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 390px;
  }

  #idioma_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 74px;
  }

  #ects_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 37px;
  }

  #disponibles {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 8px;
    font-weight: 650;
    height: 55px;
    width: 55px;
  }

  #estado {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 8px;
    font-weight: 650;
    height: 55px;
    width: 80px;
  }

  #datos_oferta2 {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    margin-top: 3px;
    height: 30px;
    width: 87%;
    border: 1px solid black;
    background-color: rgb(109, 168, 216);
  }

  #codigo_oferta2 {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 60px;
  }

  #titulo_oferta2 {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 370px;
  }

  #idioma_oferta2 {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 74px;
  }

  #ects_oferta2 {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 37px;
  }

  #estado {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 18px;
    font-weight: 650;
    height: 55px;
    width: 80px;
  }

  #recomendadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 85%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }

  #solicitadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 87%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }
</style>

<ModificaAcuerdo {periodos} {acuerdo} {titulaciones} />

<div id="recomendadas">ASIGNATURAS RECOMENDADAS</div>

<div id="datos_oferta">
  <div id="codigo_oferta">CODIGO</div>
  <div id="titulo_oferta">TÍTULO</div>
  <div id="idioma_oferta">IDIOMA</div>
  <div id="ects_oferta">ECTS</div>
  <div id="disponibles">PLAZAS</div>
</div>

{#each ofertas as o}
  {#if o.plazas_disponibles > 0 && o.titulacion === acuerdo.titulacion}
    <MostrarOferta oferta={o} {acuerdo} />
  {/if}
{/each}

<div id="solicitadas">ASIGNATURAS SOLICITADAS</div>

<div id="datos_oferta2">
  <div id="codigo_oferta2">CODIGO</div>
  <div id="titulo_oferta2">TÍTULO</div>
  <div id="idioma_oferta2">IDIOMA</div>
  <div id="ects_oferta2">ECTS</div>
  <div id="estado">ESTADO</div>
</div>

{#each asignaturas as a}
  {#if a.acuerdo_academico === acuerdo.id_acuerdo}
    <MostrarAsignacion asignatura={a} {acuerdo} />
  {/if}
{/each}

<MostrarOfertas {ofertas} {acuerdo} />


<!-- <TablaOcultableAsignaturas
  {asignaturas}
  button_text="Mostrar Todas las Asignaturas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'concedida')}
  button_text="Mostrar Concedidas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'eliminada')}
  button_text="Mostrar Eliminadas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'denegada')}
  button_text="Mostrar Denegadas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'descartada')}
  button_text="Mostrar Descartadas" />

 <TablaFiltrable
  tabla={ofertas.filter(ofer => ofer.plazas_disponibles > 0 && ofer.titulacion === acuerdo.titulacion)}
  campos={[{ name: 'codigo_asignatura', nombre: 'Codigo', show: true, filter: true }, { name: 'nombre_ingles', nombre: 'Título', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'idioma', show: true, filter: true }, { name: 'ects', show: true, filter: false }]} />
-->