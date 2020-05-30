<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let acuerdo = await this.fetch(`/asignaturas_recomendadas/${id}.json`).then(body => body.json());
    let { ofertas } = await this.fetch(`ofertas.json`).then(body => body.json());
    let { asignaciones } = await this.fetch(`asignaciones.json`).then(body => body.json());
    let { estudiantes } = await this.fetch(`estudiantes.json`).then(body => body.json());
    return {
      acuerdo,
      ofertas,
      estudiantes,
      asignaciones
    };
  }
</script>

<script>
  export let acuerdo;
  export let ofertas;
  export let asignaciones;
  export let estudiantes;

  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";
  import List, { Item, Separator, Text, PrimaryText, SecondaryText, Graphic } from "@smui/list";
  import DatosAsignatura from "../../components/DatosAsignatura.svelte";
  import Tab, { Icon, Label } from "@smui/tab";
  import TabBar from "@smui/tab-bar";
  import Button from "@smui/button";
  import MenuPantallas from "../../components/MenuPantallas.svelte";

  let menu;

  let active = "Recomendadas";

  function encontrartitulacion(t, o) {
    let array = o.titulacion.split(",");
    let i;
    for (i = 0; i != array.length; i++)
      if (array[i] === t) {
        return true;
      }
    return false;
  }

  function masterogrado(a,o) {
    let oferta = o.find(element => element.id_oferta === a);
    if (oferta.titulacion.includes('GRE')) {
      return true;
    }
    return false;
  }

  function asignada(o) {
    let asignacion = asignaciones.find(
      element => element.acuerdo_academico === acuerdo.id_acuerdo 
      && element.oferta === o.id_oferta);
    return asignacion;
  }

  function recomendadas(obj) {
    if (acuerdo.titulacion === "GRESEIAAT" && masterogrado(obj.id_oferta, ofertas) 
       && obj.plazas_disponibles > 0 && !asignada(obj)) { return true; }
    else if (acuerdo.titulacion === "MUESEIAAT" && !masterogrado(obj.id_oferta, ofertas) 
            && obj.plazas_disponibles > 0 && !asignada(obj)) { return true; }
    else if (encontrartitulacion(acuerdo.titulacion,obj) && obj.plazas_disponibles > 0 
            && !asignada(obj)) { return true; }
    else return false;
  }

  function disponibles(obj) {
    if (acuerdo.titulacion.includes('GRE') && masterogrado(obj.id_oferta, ofertas) 
              && obj.plazas_disponibles > 0 && !asignada(obj)) { return true; }
    else if (obj.plazas_disponibles > 0 && !asignada(obj)) { return true; }
    else return false;
  }

</script>

<style>
  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 0px;
    margin-top: 15px;
  }

  td {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
  }

  td.izq {
    border: 1px solid black;
    text-align: left;
    padding: 3px;
  }

  th {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
    background-color:white;
    color: black;
  }

  tr:nth-child(even) {
    background-color: white;
  }

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

  <div id="title">
    {estudiantes.find(element => element.id_estudiante === acuerdo.estudiante).apellidos},
    {estudiantes.find(element => element.id_estudiante === acuerdo.estudiante).nombre}
  </div>
  <div id="title">
    {acuerdo.año}-{acuerdo.año+1}, Q{acuerdo.cuatrimestre}
  </div>
  <div></div>
</div>

<!--- Selector Datos Asignatura / Periodo Académico --->

<div>
  <TabBar tabs={['Recomendadas', 'Recommended', 
                 'Disponibles', 'Available']} let:tab bind:active>
    <Tab {tab}>
      <Label>{tab}</Label>
    </Tab>
  </TabBar>
</div>

<!------ Asinaturas Recomendadas ------->

<table id="tabla">
  <tr>
    <th>CÓDIGO</th>
    <th>TÍTULO</th>
    <th>IDIOMA</th>
    <th>ECTS</th>

  </tr>
    {#each ofertas as obj}
      {#if obj.periodo_academico === acuerdo.periodo_academico}
        <tr>
          {#if (active === 'Recomendadas' || active === 'Recommended') && recomendadas(obj)}
            <td>{obj.codigo_asignatura}</td>
            {#if active === 'Recomendadas'}
              <td class="izq"><a href={obj.plan_de_estudios_castellano}>{obj.nombre_castellano}</a></td>
            {:else if active === 'Recommended'}
              <td class="izq"><a href={obj.plan_de_estudios_ingles}>{obj.nombre_ingles}</a></td>
            {/if}
            <td>{obj.idioma}</td>
            <td>{obj.ects}</td>
            {:else if (active === 'Disponibles' || active === 'Available') && disponibles(obj)}
            <td>{obj.codigo_asignatura}</td>
            {#if active === 'Disponibles'}
              <td class="izq"><a href={obj.plan_de_estudios_castellano}>{obj.nombre_castellano}</a></td>
            {:else if active === 'Available'}
              <td class="izq"><a href={obj.plan_de_estudios_ingles}>{obj.nombre_ingles}</a></td>
            {/if}
            <td>{obj.idioma}</td>
            <td>{obj.ects}</td>
          {/if}
      </tr>
      {/if}
    {/each}
</table>