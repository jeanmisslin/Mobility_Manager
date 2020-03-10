<script>
  export let periodos;
  export let acuerdo;
  export let titulaciones;
  export let asignaturas;
  export let ofertas;

  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import ModificaAcuerdoForm from "./ModificaAcuerdoForm.svelte";
  import TablaFiltrableComponentes from "./TablaFiltrableComponentes.svelte";

  function encontrartitulacion(a, t) {
    let array = a.split(",");
    let i;
    for (i = 0; i != a.length; i++)
      if (array[i] === t) {
        return true;
      }
    return false;
  }
  
  function asignada(a, o) {
    let asignacion = asignaturas.find(
      element => element.oferta === o.id_oferta
    );
    return asignacion;
  }
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
<ModificaAcuerdoForm {periodos} {acuerdo} {titulaciones} />

<div id="solicitadas">ASIGNATURAS SOLICITADAS</div>

<TablaFiltrableComponentes
  tabla={asignaturas}
  {acuerdo}
  componente="modificar"
  campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'ects', show: true }, { name: 'idioma', show: true, filter: true }, { name: 'plazas_disponibles', nombre: 'plazas', show: true }, { name: 'estado_solicitud', nombre: 'estado', show: true }]} />

<div id="recomendadas">ASIGNATURAS RECOMENDADAS</div>

<TablaFiltrableComponentes
  tabla={ofertas.filter(ofer => (ofer.titulacion.includes('0M') || ofer.titulacion.includes('5M')) && ofer.plazas_disponibles > 0 && ofer.periodo_academico === acuerdo.periodo_academico && (asignada(asignaturas, ofer) === null || asignada(asignaturas, ofer) === undefined))}
  {acuerdo}
  componente="solicitar"
  campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'ects', show: true }, { name: 'idioma', show: true, filter: true }]} />

<div id="ofertadas">ASIGNATURAS OFERTADAS</div>

<TablaFiltrableComponentes
  tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico && ((ofer.titulacion.includes('0M') || ofer.titulacion.includes('5M')) && ofer.plazas_disponibles <= 0) && (asignada(asignaturas, ofer) === null || asignada(asignaturas, ofer) === undefined))}
  {acuerdo}
  componente="solicitar"
  campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'ects', show: true }, { name: 'idioma', show: true, filter: true }]} />
