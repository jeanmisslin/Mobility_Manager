<script>
  export let asignatura;

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
  #contenedor {
    display: flex;
    flex-direction: column;
    margin-top: 20px;
    width: 100%;
    height: 400px;
  }

  #contenedorrow {
    display: flex;
    flex-direction: row;
    margin-top: 0px;
    width: 100%;
    height: 53px;
  }

  #campos {
    display: flex;
    flex-direction: column;
    text-align: start;
    margin-top: 6px;
    margin-left: 2px;
    width: 100%;
    height: 47px;
    border-bottom-style: solid;
    border-bottom-color: grey;
  }

  label {
    color: grey;
    font-size: 12px;
  }

  data {
    color: black;
    font-size: 15px;
  }
</style>

<div id="contenedor">
  <div id="contenedorrow">
    <div id="campos">
      <label>Código</label>
      <data>{asignatura.codigo_asignatura}</data>
    </div>
    <div id="campos">
      <label>Idioma</label>
      <data>{asignatura.idioma}</data>
    </div>
    <div id="campos">
      <label>ECTS</label>
      <data>{asignatura.ects}</data>
    </div>
  </div>
  <div id="campos">
    <label>Título en Catalán</label>
    <data>{asignatura.nombre_catalan}</data>
  </div>
  <div id="campos">
    <label>Título en Castellano</label>
    <data>{asignatura.nombre_castellano}</data>
  </div>
  <div id="campos">
    <label>Título en Inglés</label>
    <data>{asignatura.nombre_ingles}</data>
  </div>
  <div id="campos">
    <label>Plan de estudios en Catalán</label>
    <data>{asignatura.plan_de_estudios_catalan}</data>
  </div>
  <div id="campos">
    <label>Plan de estudios en Castellano</label>
    <data>{asignatura.plan_de_estudios_castellano}</data>
  </div>
  <div id="campos">
    <label>Plan de estudios en Inglés</label>
    <data>{asignatura.plan_de_estudios_ingles}</data>
  </div>
</div>
