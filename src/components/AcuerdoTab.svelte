<script>
  export let seleccion;
  export let periodos;
  export let acuerdos;
  export let titulaciones;
  export let ofertas;
  export let asignaturas;

  import ModificaAcuerdoForm from "./ModificaAcuerdoForm.svelte";
  import TablaFiltrableComponentes from "./TablaFiltrableComponentes.svelte";
  import TablaAsignaturasSolicitadas from "./TablaAsignaturasSolicitadas.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";

  let active = "Asignaturas Solicitadas";

  function periodo(seleccion, periodos) {
    let periodoA = seleccion.split("-");
    let periodoQ = seleccion.split("Q");
    let año = periodoA[0];
    let cuatrimestre = periodoQ[1];
    let id_periodo = periodos.find(element => (element.año === parseInt(año)) &
        (element.cuatrimestre === parseInt(cuatrimestre)));
    return id_periodo;
  }

  function id_acuerdo(acuerdos, id_periodo) {
    let acuerdo = acuerdos.find(element => element.periodo_academico === id_periodo.id_periodo);
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

  let id_periodo;
  let acuerdo;

  $: id_periodo = periodo(seleccion, periodos);
  $: acuerdo = id_acuerdo(acuerdos, id_periodo);

  function ruta(codigo){
    let ruta = "/asignaturas_recomendadas/";
    ruta = ruta + codigo;
    return ruta;
  }

  function salto(){
    location.replace(ruta(acuerdo.id_acuerdo));
  }

</script>

<style>
  #contenedor {
    display:flex;
    flex-direction: row;
    justify-content: space-between;
    width: 100%;
    height: 100%;
  }

  #datos {
    display: flex;
    flex-direction: column;
    margin-top: 85px;
    width: 30%;
    height: 300px;
  }

  #tab {
    display: flex;
    flex-direction: column;
    margin-top: 36px;
    margin-left: 6px;
    margin-bottom: 10px;
    width: 68%;
    height: 100%;
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

  #titulacion {
    display: flex;
    flex-direction: column;
    text-align: start;
    margin-top: 6px;
    margin-left: 2px;
    margin-bottom: 6px;
    width: 100%;
    height: 68px;
    border-bottom-style: solid;
    border-bottom-color: grey;
  }

  #estado {
    display: flex;
    flex-direction: column;
    text-align: start;
    margin-top: 6px;
    margin-left: 2px;
    margin-bottom: 25px;
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

  #separador {
    height: 10px;
  }
</style>

<div id="contenedor">

<div id="datos">
  <div id="campos">
    <label>Periodo</label>
    <data>{seleccion}</data>
  </div>
  <div id="titulacion">
    <label>Titulación</label>
    <data>{acuerdo.titulacion_castellano}</data>
  </div>
  <div id="estado">
    <label>Estado</label>
    <data>{acuerdo.estado}</data>
  </div>
  <ModificaAcuerdoForm {periodos} {acuerdo} {titulaciones} {acuerdos} />
  <div id="separador"></div>
    <Button color="primary" variant="raised">
      <a href="/asignaturas_recomendadas/{acuerdo.id_acuerdo}">Oferta Personalizada</a>
    </Button>
</div>

<div id="tab">
  <div>
    <TabBar tabs={['Asignaturas Solicitadas', 'Buscador de Asignaturas']} let:tab bind:active>
      <Tab {tab}>
        <Label>{tab}</Label>
      </Tab>
    </TabBar>
  </div>

  {#if active === 'Buscador de Asignaturas'}
    <TablaFiltrableComponentes
      tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico && (asignada(asignaturas, ofer) === null || asignada(asignaturas, ofer) === undefined))}
      {acuerdo}
      {active}
      {seleccion}
      onSolicitada={(asignaturaSolicitada) => {
        asignaturas = [...asignaturas, asignaturaSolicitada];
        console.log(asignaturas);
        active = 'Asignaturas Solicitadas';
      }}
      componente="solicitar"
      campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, 
               { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, 
               { name: 'nombre_catalan', filter: true }, 
               { name: 'nombre_castellano', filter: true }, 
               { name: 'plazas_disponibles', nombre: 'vacantes', show: true }]} />
  {:else}
    <TablaAsignaturasSolicitadas tabla={asignaturas} {ofertas} {acuerdo} />
  {/if}

</div>

</div>
