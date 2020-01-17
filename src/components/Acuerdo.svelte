<script>
  export let periodos;
  export let acuerdo;
  export let titulaciones;
  export let asignaturas;
  export let ofertas;
  export let unaofertaporasignatura;

  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import TablaFiltrableComponentes from "./TablaFiltrableComponentes.svelte";
</script>

<style>
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

<ModificaAcuerdo {periodos} {acuerdo} {titulaciones} />

  <div id="solicitadas">ASIGNATURAS SOLICITADAS</div>

  <TablaFiltrableComponentes
    tabla={asignaturas}
    {acuerdo}
    componente="modificar"
    campos={[
      { name: 'codigo_asignatura', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
      { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
      { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, 
      { name: 'idioma', show: true, filter: true }, 
      { name: 'ects', show: true }, 
      { name: 'estado_solicitud', nombre: 'estado', show: true }]} />

  <div id="recomendadas">ASIGNATURAS RECOMENDADAS</div>

  <TablaFiltrableComponentes
    tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico && ofer.titulacion === acuerdo.titulacion)}
    {acuerdo}
    componente="solicitar"
    campos={[
      { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
      { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
      { name: 'nombre_catalan', filter: true }, 
      { name: 'nombre_castellano', filter: true }, 
      { name: 'idioma', show: true, filter: true }, 
      { name: 'ects', show: true }, 
      { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />

  <div id="ofertadas">ASIGNATURAS OFERTADAS</div>

  <TablaFiltrableComponentes
    tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico)}
    {acuerdo}
    componente="solicitar"
    campos={[
      { name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
      { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
      { name: 'nombre_catalan', filter: true }, 
      { name: 'nombre_castellano', filter: true }, 
      { name: 'titulacion_ingles', nombre: 'titulacion', show: true, filter: true }, 
      { name: 'idioma', show: true, filter: true }, 
      { name: 'ects', show: true }, 
      { name: 'plazas_disponibles', nombre: 'plazas', show: true }]} />
