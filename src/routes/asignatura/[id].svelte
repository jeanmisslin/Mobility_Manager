<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let asignatura = await this.fetch(`/asignatura/${id}.json`).then(body => body.json());
    let { periodos } = await this.fetch(`/endpoints/periodos.json`).then(body => body.json());
    let { titulaciones } = await this.fetch(`/endpoints/titulaciones.json`).then(body => body.json());
    let { asignaturas } = await this.fetch(`../endpoints/asignaturas.json`).then(body => body.json());
    return {
      asignatura,
      periodos,
      asignaturas,
      titulaciones
    };
  }
</script>

<script>
  export let asignatura;
  export let periodos;
  export let titulaciones;
  export let asignaturas;

  import MostrarOferta from "../../components/MostrarOferta.svelte";
  import DatosAsignatura from "../../components/DatosAsignatura.svelte";
  import ModificaAsignatura from "../../components/ModificaAsignatura.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  let { ofertas } = asignatura;

  let active = "Datos Asignatura";

  function generartab(periodos) {
    let l = periodos.length;
    let pestañas = "Datos Asignatura";
    let periodo;
    let pestaña;
    if (l <= 4) {
      for (let i = l-1; i >= 0; i--) {
        periodo = periodos[i];
        pestaña = periodo.año + "-" + (periodo.año + 1) + " Q" + periodo.cuatrimestre;
        pestañas = pestañas + ", " + pestaña;
      }
    } else {
      for (let i = l-1; i > l-5; i--) {
        periodo = periodos[i];
        pestaña = periodo.año + "-" + (periodo.año + 1) + " Q" + periodo.cuatrimestre;
        pestañas = pestañas + ", " + pestaña;
      }
    }
    return pestañas.split(",");
  }

  let tabgenerado = generartab(periodos);

  function modificarAsignaturaEnCaliente (modificacion) {
    asignatura = modificacion;
  }

  function modificarOfertaEnCaliente(modificacion) {
    for (let i = 0; i < ofertas.length; i++) {
      if (ofertas[i].id_oferta === modificacion.oferta) {
        ofertas[i].titulacion = modificacion.titulacion;
      }
    }
  }
</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 10px;
    height: 80px;
    width: 100%;
    background-color: white;
    border: 1px solid black;
  }

  #titulo {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 16pt;
    color: black;
    text-transform: uppercase;
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

<!-- Menú con los links al resto de pantallas -->

<MenuPantallas menu="estudiantes incoming,asignaturas,ofertas,universidades" />

<!------- Titulo de la pantalla ----------->

  <div id="titulo">{asignatura.codigo_asignatura}</div>
  <div id="titulo">{asignatura.nombre_ingles}</div>
  <div></div>
</div>

<!--- Selector Datos Asignatura / Periodo Académico --->

<div>
  <TabBar tabs={tabgenerado} let:tab bind:active>
    <Tab {tab}>
      <Label>{tab}</Label>
    </Tab>
  </TabBar>
</div>

{#if active === 'Datos Asignatura'}

<!------ Datos Asignatura ------->

  <DatosAsignatura {asignatura} />

<!--- Formulario Modifica Asignatura --->

  <ModificaAsignatura {asignatura} {asignaturas} onModificado={modificarAsignaturaEnCaliente}/>
{:else}

<!--- Ofertas de la Asignatura según Periodo Académico --->

  <MostrarOferta {ofertas}
                 {periodos} 
                 {asignatura} 
                 {titulaciones} 
                  seleccion={active}
                  onModificado={modificarOfertaEnCaliente} />
{/if}