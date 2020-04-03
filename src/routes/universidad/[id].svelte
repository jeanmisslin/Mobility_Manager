<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let universidad = await this.fetch(`/universidad/${id}.json`).then(body => body.json());
    let universidades = await this.fetch(`universidades.json`).then(body => body.json());
    return { universidad, universidades };
  }
</script>

<script>
  export let universidad;
  export let universidades;

  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Separator, Text, PrimaryText, SecondaryText, Graphic } from "@smui/list";
  import MostrarOfertasForm from "../../components/MostrarOfertasForm.svelte";
  import DatosUniversidad from "../../components/DatosUniversidad.svelte";
  import ModificaUniversidadForm from "../../components/ModificaUniversidadForm.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";

  let menu;
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

  #title {
    display: flex;
    text-align: center;
    font-weight: 500;
    font-size: 16pt;
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

  <div id="title">{universidad.universidad}</div>
  <div></div>
</div>

<!------ Datos Universidad ------->

  <DatosUniversidad {universidad} {universidades}/>

<!--- Formulario Modifica Universidad

  <ModificaUniversidadForm {universidad} /> --->