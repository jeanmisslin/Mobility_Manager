<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let asignatura = await this.fetch(`/asignatura/${id}.json`).then(body => body.json());
    let { ofertas } = await this.fetch(`ofertas.json`).then(body => body.json());
    let { periodos } = await this.fetch(`periodos.json`).then(body => body.json());
    let { titulaciones } = await this.fetch(`titulaciones.json`).then(body => body.json());
    let { asignaciones } = await this.fetch(`asignaciones.json`).then(body => body.json());
    return {
      asignatura,
      ofertas,
      periodos,
      asignaciones,
      titulaciones
    };
  }
</script>

<script>
  export let asignatura;
  export let ofertas;
  export let periodos;
  export let titulaciones;
  export let asignaciones;

  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Separator, Text, PrimaryText, SecondaryText, Graphic } from "@smui/list";
  import MostrarOfertasForm from "../../components/MostrarOfertasForm.svelte";
  import DatosAsignatura from "../../components/DatosAsignatura.svelte";
  import ModificaAsignaturaForm from "../../components/ModificaAsignaturaForm.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";

  let menu;

  let active = "Datos Asignatura";

  function generartab(periodos) {
    let l = periodos.length;
    let pestañas = "Datos Asignatura";
    let periodo;
    let pestaña;
    for (let i = l-1; i > l-5; i--) {
      periodo = periodos[i];
      pestaña =
        periodo.año + "-" + (periodo.año + 1) + " Q" + periodo.cuatrimestre;
      pestañas = pestañas + ", " + pestaña;
    }
    return pestañas;
  }

  let tabstring = generartab(periodos);
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
    font-size: 18pt;
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
        </List>
      </Menu>
    </div>
  </div>

<!------- Titulo de la pantalla ----------->

  <div id="title">{asignatura.nombre_ingles}</div>
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

  <ModificaAsignaturaForm {asignatura} />
{:else}

<!--- Ofertas de la Asignatura según Periodo Académico --->

  <MostrarOfertasForm {ofertas} {periodos} {asignatura} {titulaciones} {asignaciones} seleccion={active} />
{/if}