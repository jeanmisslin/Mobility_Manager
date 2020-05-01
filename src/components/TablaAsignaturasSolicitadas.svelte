<script>
  export let tabla;
  export let acuerdo;
  export let ofertas;

  import ModificarEstadoAsignacionForm from "./ModificarEstadoAsignacionForm.svelte";
  import Textfield from "@smui/textfield";
  import DataTable, { Head, Body, Row, Cell } from "@smui/data-table";

  let filtro = "";

  $: tablaFiltrada = tabla.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_asignatura, filtro) ||
      strIn(e.nombre_ingles, filtro) ||
      strIn(e.nombre_catalan, filtro) ||
      strIn(e.nombre_castellano, filtro) ||
      strIn(e.estado_solicitud, filtro)
    );
  });

  function encontrartitulacion(a, t, o) {
    let oferta = o.find(element => element.id_oferta === a);
    let array = oferta.titulacion.split(",");
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

  function colorfila(obj) {
    if (obj.plazas_disponibles <= 0 || (acuerdo.titulacion.includes('GRE') && !masterogrado(obj.oferta, ofertas))) {
      return "red";
    } else if (!acuerdo.titulacion.includes('GRE') && masterogrado(obj.oferta, ofertas)) {
      return "yellow";
    } else if (!acuerdo.titulacion.includes('GRE') && !masterogrado(obj.oferta, ofertas)) {
      return "green";
    } else if (acuerdo.titulacion === 'GRESEIAAT' && masterogrado(obj.oferta, ofertas)) {
      return "green";
    } else if (!encontrartitulacion(obj.oferta, acuerdo.titulacion, ofertas)) {
      return "yellow";
    } else {
      return "green";
    }
  }

  function modificarEstadoEnCaliente(codigo, estado, disponibles, concedidas) {
    console.log("modificarEstadoEnCaliente", codigo, estado);
    for (let i = 0; i < tabla.length; i++) {
      if (tabla[i].codigo_asignatura === codigo) {
        tabla[i].estado_solicitud = estado;
        tabla[i].plazas_disponibles = disponibles;
        tabla[i].plazas_concedidas = concedidas;
      }
    }
  }
</script>

<style>
  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 0px;
    margin-top:0px;
  }

  td {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
  }

  td.green {
    border: 1px solid black;
    text-align: center;
    background-color: rgb(248, 255, 248);
    padding: 3px;
  }

  td.yellow {
    border: 1px solid black;
    text-align: center;
    background-color: rgb(255, 255, 230);
    padding: 3px;
  }

  td.red {
    border: 1px solid black;
    text-align: center;
    background-color: rgb(255, 236, 236);
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

  #buscador {
    margin-top: 0px;
    margin-bottom: 15px;
  }
</style>

<div id="buscador">
  <Textfield label="Buscador" style="width: 100%" bind:value={filtro} />
</div>

<table id="tabla">
  <tr>
    <th>CÓDIGO</th>
    <th>TÍTULO</th>
    <th>PLAZAS</th>
    <th>ESTADO</th>
    <th>MODIFICAR</th>

  </tr>
  {#each tablaFiltrada as obj}
    <tr>
      {#if obj.periodo_academico === acuerdo.periodo_academico}
        <td class={colorfila(obj)}>
          <a href="/asignatura/{obj.codigo_asignatura}">
            {obj.codigo_asignatura}
          </a>
        </td>
        <td class={colorfila(obj)}>{obj.nombre_ingles}</td>
        <td class={colorfila(obj)}>{obj.plazas_disponibles}</td>
        <td class={colorfila(obj)}>{obj.estado_solicitud}</td>
        <td class={colorfila(obj)}>
          <ModificarEstadoAsignacionForm 
            asignatura={obj} 
            {acuerdo} 
            onModificado={modificarEstadoEnCaliente} />
        </td>
      {/if}
    </tr>
  {/each}
</table>
