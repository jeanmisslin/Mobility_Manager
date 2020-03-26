<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`universidades.json`).then(body => body.json())
    ];
    let [
      { universidades }
    ] = await Promise.all(fetch_endpoints);
    return {
      universidades
    };
  }
</script>

<script>
  import TablaFiltrableEstudiantes from "../../components/TablaFiltrableEstudiantes.svelte";
  import AñadirUniversidad from "../../components/AñadirUniversidad.svelte";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";

  export let universidades;

  let nuevauniversidad = {
    codigo_universidad: "",
    universidad: "",
    pais: ""
  };

  let menu;
  
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

  #form {
    width: 100%;
    height: 60px;
    margin-top: 20px;
  }

  #menu {
    width: 80px;
    height: 40px;
    margin-left: 10px;
    align-items: center;
  }

  #contenedor {
    display: flex;
    flex-direction: row-reverse;
    justify-content: space-between;
    width: 100%;
    height: 40px;
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
              <a href="/asignaturas/">Asignaturas</a>
            </Text>
          </Item>
        </List>
      </Menu>
    </div>
  </div>

<!-------- Titulo de la pantalla ----------->

  <div id="title">Universidades</div>
  <div />
</div>

<!------ Tabla con todas las universidades de la Base de Datos ------->

  <TablaFiltrableEstudiantes
    tabla={universidades}
    campos={[{ name: 'codigo_universidad', nombre: 'codigo', show: true, filter: true },
             { name: 'universidad', show: true, filter: true }, 
             { name: 'pais', show: true, filter: true }]} />

<!------ Formulario Nueva Universidad ------->

<div id="form">
  <AñadirUniversidad />
</div>
