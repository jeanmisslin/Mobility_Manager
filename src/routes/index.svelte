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
  import TablaFiltrable from "../components/TablaFiltrable.svelte";
  import NuevoEstudiante from "../components/NuevoEstudiante.svelte";
  import NuevoEstudianteColumnas from "../components/NuevoEstudianteColumnas.svelte";
  import NuevoEstudianteFilas from "../components/NuevoEstudianteFilas.svelte";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import Select, { Option } from "@smui/select";
  import { MDCDialog } from "@material/dialog";
  import IoIosSearch from "svelte-icons/io/IoIosSearch.svelte";

  export let estudiantes;
  export let universidades;
  export let titulaciones;
  export let periodos;

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

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 200px;
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
  <div id="title">ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="options">
  <div id="data">
    <a href="/asignaturas/">ASIGNATURAS</a>
    <a href="/ofertas/">OFERTAS DISPONIBLES</a>
  </div>
</div>

<!--<div id="contenido">ESTUDIANTES</div>-->

<NuevoEstudiante {universidades} {periodos} {titulaciones} />

<NuevoEstudianteColumnas {universidades} {periodos} {titulaciones} />

<NuevoEstudianteFilas {universidades} {periodos} {titulaciones} />

<TablaFiltrable
  tabla={estudiantes}
  campos={[{ name: 'email', show: true, render: obj => `<a href="/estudiante/${obj.email}">${obj.email}</a>` }, { name: 'apellidos', show: true, filter: true }, { name: 'nombre', show: true, filter: true }, { name: 'universidad', show: true, filter: true }, { name: 'pais', show: true, filter: true }]} />
