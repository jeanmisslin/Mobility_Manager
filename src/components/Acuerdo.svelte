<script>
  import TablaOcultableAsignaturas from "./TablaOcultableAsignaturas.svelte";

  export let asignaturas;
  export let acuerdo;
</script>

<style>
  #acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 120px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
    color: black;
    border: 1px solid black;
  }

  #contenido_acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-left: 20px;
    height: 110px;
    width: 500px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }
</style>

<div id="acuerdo">
  <div id="contenido_acuerdo">
    <p>
      Año: {acuerdo.año}-{acuerdo.año + 1}
      <br />
      Cuatrimestre: {acuerdo.cuatrimestre}
      <br />
      Titulación: {acuerdo.nombre_castellano}
      <br />
      Estado: {acuerdo.estado}
    </p>
  </div>
</div>

<TablaOcultableAsignaturas
  asignaturas={asignaturas}
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

