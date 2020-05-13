<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let estudiante = await this.fetch(`/estudiante/${id}.json`).then(body => body.json());
    let { universidades } = await this.fetch(`universidades.json`).then(body => body.json());
    let { titulaciones } = await this.fetch(`titulaciones.json`).then(body => body.json());
    let { ofertas } = await this.fetch(`ofertas.json`).then(body => body.json());
    let { periodos } = await this.fetch(`periodos.json`).then(body => body.json());
    let { estudiantes } = await this.fetch(`estudiantes.json`).then(body => body.json());
    return {
      estudiante,
      universidades,
      titulaciones,
      ofertas,
      estudiantes,
      periodos
    };
  }
</script>

<script>
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Separator, Text, PrimaryText, SecondaryText, Graphic } from "@smui/list";
  import DatosPersonales from "../../components/DatosPersonales.svelte";
  import AcuerdoTab from "../../components/AcuerdoTab.svelte";
  import NuevoAcuerdoForm from "../../components/NuevoAcuerdoForm.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  export let estudiante;
  export let universidades;
  export let titulaciones;
  export let ofertas;
  export let periodos;
  export let estudiantes;

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

  let menu;

  let active = "Datos Personales";

  function generartab(acuerdos) {
    let pestañas = "Datos Personales";
    let pestaña;
    for (let i = 0; i < acuerdos.length; i++) {
      pestaña = acuerdos[i].año + "-" + (acuerdos[i].año + 1) + " Q" + acuerdos[i].cuatrimestre;
      pestañas = pestañas + ", " + pestaña;
    }
    return pestañas;
  }

  let tabstring;
  $: tabstring = generartab(acuerdos);
  let tabgenerado;
  $: tabgenerado = tabstring.split(",");
</script>

<style>
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: space-between;
    margin-bottom: 10px;
    height: 50px;
    width: 100%;
    background-color: white;
    border: 1px solid black;
  }

  #title {
    display: flex;
    font-weight: 500;
    font-size: 20pt;
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

  <div id="title">{apellidos}, {nombre}</div>
  <div />
</div>

<!--- Selector Datos Estudiante / Acuerdo Académico --->

<div>
  <TabBar tabs={tabgenerado} let:tab bind:active>
    <Tab {tab}>
      <Label>{tab}</Label>
    </Tab>
  </TabBar>
</div>

{#if active === 'Datos Personales'}

<!------ Datos del Estudiante ------->

  <DatosPersonales {estudiante} {universidades} {estudiantes}/>

<!----- Formulario Nuevo Acuerdo ----->

  <NuevoAcuerdoForm 
    {periodos} 
    {titulaciones} 
    {estudiante} 
    acuerdos={estudiante.acuerdos}
    onModificado={(nuevoacuerdo) => { acuerdos = [...acuerdos, nuevoacuerdo]; }} />

{:else}

<!----- Datos del Acuerdo Académico ----->

  <AcuerdoTab
    seleccion={active}
    {periodos}
    {acuerdos}
    {titulaciones}
    {ofertas}
    {asignaturas} />
{/if}
