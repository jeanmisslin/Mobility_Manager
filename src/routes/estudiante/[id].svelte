<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let estudiante = await this.fetch(`/estudiante/${id}.json`).then(body =>
      body.json()
    );
    let { universidades } = await this.fetch(`universidades.json`).then(body =>
      body.json()
    );
    let { titulaciones } = await this.fetch(`titulaciones.json`).then(body =>
      body.json()
    );
    let { ofertas } = await this.fetch(`ofertas.json`).then(body =>
      body.json()
    );
    let { periodos } = await this.fetch(`periodos.json`).then(body =>
      body.json()
    );
    let { asignaciones } = await this.fetch(`asignaciones.json`).then(body =>
      body.json()
    );
    return {
      estudiante,
      universidades,
      titulaciones,
      ofertas,
      asignaciones,
      periodos
    };
  }
</script>

<script>
  import DatosPersonales from "../../components/DatosPersonales.svelte";
  import AcuerdoTab from "../../components/AcuerdoTab.svelte";
  import ModificaEstudiante from "../../components/ModificaEstudiante.svelte";
  import ModificaEstudianteForm from "../../components/ModificaEstudianteForm.svelte";
  import ModificaAcuerdo from "../../components/ModificaAcuerdo.svelte";
  import ModificaAcuerdoForm from "../../components/ModificaAcuerdoForm.svelte";
  import TablaFiltrableComponentes from "../../components/TablaFiltrableComponentes.svelte";
  import Acuerdo from "../../components/Acuerdo.svelte";
  import AcuerdoGrados from "../../components/AcuerdoGrados.svelte";
  import AcuerdoMasters from "../../components/AcuerdoMasters.svelte";
  import NuevoAcuerdo from "../../components/NuevoAcuerdo.svelte";
  import NuevoAcuerdoForm from "../../components/NuevoAcuerdoForm.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";

  export let estudiante;
  export let universidades;
  export let titulaciones;
  export let ofertas;
  export let periodos;
  let asignaciones;

  let {
    apellidos,
    nombre,
    universidad,
    codigo_universidad,
    pais,
    email,
    titulacion,
    id_acuerdo,
    acuerdos,
    asignaturas
  } = estudiante;

  let active = "Datos Personales";

  function mostrarperiodo(p) {
    let periodo = p + "-" + (p + 1) + " Q" + p.cuatrimestre;
    return periodo;
  }

  function generartab(acuerdos, periodos) {
    let l = acuerdos.length;
    let pestañas = "Datos Personales";
    let periodo;
    let pestaña;
    for (let i = 0; i < l; i++) {
      periodo = periodos.find(
        element => element.id_periodo === acuerdos[i].periodo_academico
      );
      pestaña =
        periodo.año + "-" + (periodo.año + 1) + " Q" + periodo.cuatrimestre;
      pestañas = pestañas + ", " + pestaña;
    }
    return pestañas;
  }

  let tabstring = generartab(acuerdos, periodos);
  let tabgenerado = tabstring.split(",");

  let periodostring = tabgenerado[1].split("-");
  let periodoQ = tabgenerado[1].split("Q");
  let año = periodostring[0];
  let cuatrimestre = periodoQ[1];
  let id_periodo = periodos.find(
    element =>
      element.año === parseInt(año) &&
      element.cuatrimestre === parseInt(cuatrimestre)
  );
  let acuerdo = acuerdos.find(element => element.periodo_academico === id_periodo.id_periodo);
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

  #acuerdos {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
    color: black;
    border: 1px solid black;
  }

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
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
    margin-bottom: 10px;
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
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">
  <div id="title">{apellidos}, {nombre}</div>
</div>

<div id="options">
  <div id="data">
    <a href="../">ESTUDIANTES</a>
    <a href="/asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div>
  <TabBar tabs={tabgenerado} let:tab bind:active>
    <!-- Notice that the `tab` property is required! -->
    <Tab {tab}>
      <Label>{tab}</Label>
    </Tab>
  </TabBar>

  <!--<div style="margin-top: 15px;">
    Programmatically select:
    {#each tabgenerado as tab}
      <Button on:click={() => (active = tab)}>
        <Label>{tab}</Label>
      </Button>
    {/each}
  </div>

  <pre class="status">Selected: {active}</pre>-->
</div>

{#if active === 'Datos Personales'}
  <DatosPersonales {estudiante} {universidades} />
  <NuevoAcuerdoForm {periodos} {titulaciones} estudiante={email} />
{:else}
  <AcuerdoTab {active} {periodos} {acuerdos} {titulaciones} />
{/if}

<!-- <DatosPersonales {estudiante} {universidades} />-->
<div id="contenido">DATOS PERSONALES</div>

<ModificaEstudiante {estudiante} {universidades} />

<ModificaEstudianteForm {estudiante} {universidades} />

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

<NuevoAcuerdo {periodos} {titulaciones} estudiante={email} />
<NuevoAcuerdoForm {periodos} {titulaciones} estudiante={email} />

{#each acuerdos as acuerdo}
  {#if acuerdo.titulacion === 'GRESEIAAT'}
    <AcuerdoGrados
      {periodos}
      {acuerdo}
      {titulaciones}
      {asignaturas}
      {ofertas} />
  {:else if acuerdo.titulacion === 'MUESEIAAT'}
    <AcuerdoMasters
      {periodos}
      {acuerdo}
      {titulaciones}
      {asignaturas}
      {ofertas} />
  {:else}
    <Acuerdo {periodos} {acuerdo} {titulaciones} {asignaturas} {ofertas} />
  {/if}
{/each}
