<script>
  export let active;
  export let periodos;
  export let acuerdos;
  export let titulaciones;

  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import ModificaAcuerdoForm from "./ModificaAcuerdoForm.svelte";
  import TablaFiltrableComponentes from "./TablaFiltrableComponentes.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";

  function periodo(active, periodos) {
    let periodoA = active.split("-");
    let periodoQ = active.split("Q");
    let año = periodoA[0];
    let cuatrimestre = periodoQ[1];
    let id_periodo = periodos.find(
      element =>
        (element.año === parseInt(año)) &
        (element.cuatrimestre === parseInt(cuatrimestre))
    );
    return id_periodo;
  }

  function id_acuerdo(acuerdos, id_periodo) {
    let acuerdo = acuerdos.find(
      element => element.periodo_academico === id_periodo.id_periodo
    );
    return acuerdo;
  }

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

  let id_periodo = periodo(active, periodos);
  let acuerdo = id_acuerdo(acuerdos, id_periodo);
</script>

<style>
  #contenedor {
    display: flex;
    flex-direction: column;
    width: 100%;
    height: 200px;
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
  <div id="campos">
    <label>Periodo</label>
    <data>{active}</data>
  </div>
  <div id="campos">
    <label>Titulación</label>
    <data>{acuerdo.titulacion_castellano}</data>
  </div>
  <div id="campos">
    <label>Estado</label>
    <data>{acuerdo.estado}</data>
  </div>
</div>

<ModificaAcuerdoForm {periodos} {acuerdo} {titulaciones} />

periodo: {id_periodo.id_periodo} acuerdo: {id_acuerdo.id_acuerdo}

<!--active: {active} periodoA: {periodoA} periodoQ: {periodoQ} año: {año}
cuatrimestre: {cuatrimestre} id_periodo: {id_periodo.id_periodo} periodo_año: {id_periodo.año}
periodo_cuatri: {id_periodo.cuatrimestre} id_acuerdo: {acuerdo.id_acuerdo}-->
