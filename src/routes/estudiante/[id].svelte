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
      periodo = periodos.find(element => element.id_periodo === acuerdos[i].periodo_academico);
      pestaña = periodo.año + "-" + (periodo.año + 1) + " Q" + periodo.cuatrimestre;
      pestañas = pestañas + ", " + pestaña;
    }
    return pestañas;
  }

  let tabstring = generartab(acuerdos, periodos);
  let tabgenerado = tabstring.split(",");
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

  #menu {
    width: 80px;
    height: 40px;
    margin-left: 10px;
    align-items: center;
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">

<!-- Menú con los links al resto de pantallas -->

  <div id="menu">
    <div style="min-width: 100px;">
      <Button on:click={() => menu.setOpen(true)}>Menu</Button>
      <Menu bind:this={menu}>
        <List>
          <Item>
            <Text>
              <a href="../">Estudiantes Incoming</a>
            </Text>
          </Item>
          <Item>
            <Text>
              <a href="/asignaturas/">Asignaturas</a>
            </Text>
          </Item>
          <Item>
            <Text>
              <a href="/universidades/">Universidades</a>
            </Text>
          </Item>
        </List>
      </Menu>
    </div>
  </div>

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

  <NuevoAcuerdoForm {periodos} {titulaciones} estudiante={email} acuerdos={estudiante.acuerdos} />
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
