<script>
  export let seleccion;
  export let periodos;
  export let acuerdos;
  export let titulaciones;
  export let ofertas;
  export let asignaturas;

  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import TablaFiltrableOfertas from "./TablaFiltrableOfertas.svelte";
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
    let periodo_academico = periodos.find(element => (element.año === parseInt(año)) &&
        (element.cuatrimestre === parseInt(cuatrimestre)));
    return periodo_academico;
  }

  function acuerdo_academico(acuerdos, periodo_academico) {
    let acuerdo = acuerdos.find(element => element.periodo_academico === periodo_academico.id_periodo);
    return acuerdo;
  }

  function asignada(o) {
    let asignacion = asignaturas.find(
      element => element.oferta === o.id_oferta
    );
    return asignacion;
  }

  $: periodo_academico = periodo(seleccion, periodos);
  $: acuerdo = acuerdo_academico(acuerdos, periodo_academico);

  function modificarAcuerdoEnCaliente(codigo, titulacion, periodo, estado) {
    for (let i = 0; i < acuerdos.length; i++) {
      if (acuerdos[i].id_acuerdo === codigo) {
        periodo_academico = periodo;
        acuerdos[i].periodo_academico = periodo.id_periodo;
        acuerdos[i].titulacion_castellano = titulacion;
        acuerdos[i].estado = estado;
        }
      }
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
    <data>{periodo_academico.año + "-" + (periodo_academico.año+1) + " Q" 
         + periodo_academico.cuatrimestre}</data>
  </div>
  <div id="titulacion">
    <label>Titulación</label>
    <data>{acuerdo.titulacion_castellano}</data>
  </div>
  <div id="estado">
    <label>Estado</label>
    <data>{acuerdo.estado}</data>
  </div>
  <ModificaAcuerdo 
    {periodos} 
    {acuerdo} 
    {titulaciones} 
    {acuerdos}
    {asignaturas}
    onModificado={modificarAcuerdoEnCaliente} />
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
    <TablaFiltrableOfertas
      tabla={ofertas.filter(ofer => ofer.periodo_academico === acuerdo.periodo_academico && (asignada(ofer) === null || asignada(ofer) === undefined))}
      {acuerdo}
      onSolicitada={(asignaturaSolicitada) => {
        asignaturas = [...asignaturas, asignaturaSolicitada];
        active = 'Asignaturas Solicitadas';
      }}
      campos={[{ name: 'codigo_asignatura', nombre: 'código', show: true, filter: true }, 
               { name: 'nombre_ingles', nombre: 'titulo', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.id_asignatura}">${obj.nombre_ingles}</a>` }, 
               { name: 'nombre_catalan', filter: true }, 
               { name: 'nombre_castellano', filter: true }, 
               { name: 'plazas_disponibles', nombre: 'vacantes', show: true, centrado: true }]} />
  {:else}
    <TablaAsignaturasSolicitadas tabla={asignaturas} {ofertas} {acuerdo} />
  {/if}

</div>

</div>
