<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`estudiantes.json`).then(body => body.json()),
      this.fetch(`universidades.json`).then(body => body.json()),
      this.fetch(`titulaciones.json`).then(body => body.json()),
      this.fetch(`periodos.json`).then(body => body.json())
    ];
    let [
      { estudiantes },
      { universidades },
      { titulaciones },
      { periodos }
    ] = await Promise.all(fetch_endpoints);
    return {
      estudiantes,
      universidades,
      titulaciones,
      periodos
    };
  }
</script>

<script>
  import TablaFiltrableEstudiantes from "../components/TablaFiltrableEstudiantes.svelte";
  import NuevoEstudiante from "../components/NuevoEstudiante.svelte";
  import NuevoEstudianteColumnas from "../components/NuevoEstudianteColumnas.svelte";
  import NuevoEstudianteFilas from "../components/NuevoEstudianteFilas.svelte";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, {
    Item,
    Graphic,
    Text,
    PrimaryText,
    SecondaryText,
    Separator
  } from "@smui/list";
  import Select, { Option } from "@smui/select";
  import { MDCDialog } from "@material/dialog";
  import IoIosSearch from "svelte-icons/io/IoIosSearch.svelte";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";

  export let estudiantes;
  export let universidades;
  export let titulaciones;
  export let periodos;

  let menu;

  let message;

  let filtro = "";

  $: universidadesFiltradas = universidades.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_universidad, filtro) ||
      strIn(e.universidad, filtro) ||
      strIn(e.pais, filtro)
    );
  });

  function añadirestudiante() {
    fetch(`nuevoestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoestudiante)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoestudiante saved";
        }
      });
  }

  function añadiracuerdo() {
    fetch(`nuevoacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        acuerdo: nuevoacuerdo,
        estudiante: nuevoestudiante
      })
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoacuerdo saved";
        }
      });
  }

  function añadirambos() {
    añadirestudiante();
    añadiracuerdo();
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
              <a href="/asignaturas/">Asignaturas</a>
            </Text>
          </Item>
          <Item>
            <Text>
              <a href="/ofertas/">Ofertas Disponibles</a>
            </Text>
          </Item>
        </List>
      </Menu>
    </div>
  </div>
  <div id="title">Estudiantes Incoming</div>
  <div />
</div>

<TablaFiltrableEstudiantes
  tabla={estudiantes}
  campos={[{ name: 'apellidos', show: true, render: obj => `<a href="/estudiante/${obj.email}">${obj.apellidos}</a>`, filter: true }, { name: 'nombre', show: true, filter: true }, { name: 'universidad', show: true, filter: true }, { name: 'pais', show: true, filter: true }]} />

<div id="form">
  <NuevoEstudiante {universidades} {periodos} {titulaciones} />
</div>
