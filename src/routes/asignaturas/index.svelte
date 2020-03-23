<script context="module">
  export function preload({ params, query }) {
    return this.fetch(`../asignaturas.json`)
      .then(body => body.json())
      .then(json => {
        return { asignaturas: json };
      });
  }
</script>

<script>
  import TablaFiltrableEstudiantes from "../../components/TablaFiltrableEstudiantes.svelte";
  import NuevaAsignatura from "../../components/NuevaAsignatura.svelte";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, {
    Item,
    Graphic,
    Text,
    PrimaryText,
    SecondaryText,
    Separator
  } from "@smui/list";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";

  let menu;

  export let asignaturas;

  let nuevaasignatura = {
    open: false,
    codigo_asignatura: "",
    nombre_catalan: "",
    nombre_castellano: "",
    nombre_ingles: "",
    idioma: "",
    ects: "",
    plan_de_estudios_catalan: "",
    plan_de_estudios_castellano: "",
    plan_de_estudios_ingles: ""
  };

  let message;

  function añadirasignatura() {
    fetch(`nuevaasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaasignatura)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevaasignatura saved";
        }
      });
  }
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
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">
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
        </List>
      </Menu>
    </div>
  </div>
  <div id="title">ASIGNATURAS</div>
  <div />
</div>

<TablaFiltrableEstudiantes
  tabla={asignaturas}
  campos={[{ name: 'codigo_asignatura', nombre: 'codigo', show: true, filter: true, render: obj => `<a href="/asignatura/${obj.codigo_asignatura}">${obj.codigo_asignatura}</a>` }, { name: 'nombre_ingles', nombre: 'título', show: true, filter: true, render: obj => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` }, { name: 'nombre_catalan', filter: true }, { name: 'nombre_castellano', filter: true }, { name: 'idioma', show: true, filter: true }, { name: 'ects', show: true }]} />

<div id="form">
  <NuevaAsignatura />
</div>
