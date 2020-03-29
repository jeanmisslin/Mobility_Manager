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

  #green {
    border: 1px solid black;
    text-align: center;
    background-color: rgb(248, 255, 248);
    padding: 3px;
  }

  #yellow {
    border: 1px solid black;
    text-align: center;
    background-color: rgb(255, 255, 230);
    padding: 3px;
  }

  #red {
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
        {#if obj.plazas_disponibles <= 0}
          <td id="red">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="red">{obj.nombre_ingles}</td>
          <td id="red">{obj.plazas_disponibles}</td>
          <td id="red">{obj.estado_solicitud}</td>
          <td id="red">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else if acuerdo.titulacion.includes('GRE') && !masterogrado(obj.oferta, ofertas)}
          <td id="red">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="red">{obj.nombre_ingles}</td>
          <td id="red">{obj.plazas_disponibles}</td>
          <td id="red">{obj.estado_solicitud}</td>
          <td id="red">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else if !acuerdo.titulacion.includes('GRE') && masterogrado(obj.oferta, ofertas)}
          <td id="yellow">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="yellow">{obj.nombre_ingles}</td>
          <td id="yellow">{obj.plazas_disponibles}</td>
          <td id="yellow">{obj.estado_solicitud}</td>
          <td id="yellow">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else if !acuerdo.titulacion.includes('GRE') && !masterogrado(obj.oferta, ofertas)}
          <td id="green">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="green">{obj.nombre_ingles}</td>
          <td id="green">{obj.plazas_disponibles}</td>
          <td id="green">{obj.estado_solicitud}</td>
          <td id="green">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else if acuerdo.titulacion === 'GRESEIAAT' && masterogrado(obj.oferta, ofertas)}
          <td id="green">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="green">{obj.nombre_ingles}</td>
          <td id="green">{obj.plazas_disponibles}</td>
          <td id="green">{obj.estado_solicitud}</td>
          <td id="green">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else if !encontrartitulacion(obj.oferta, acuerdo.titulacion, ofertas)}
          <td id="yellow">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="yellow">{obj.nombre_ingles}</td>
          <td id="yellow">{obj.plazas_disponibles}</td>
          <td id="yellow">{obj.estado_solicitud}</td>
          <td id="yellow">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {:else}
          <td id="green">
            <a href="/asignatura/{obj.codigo_asignatura}">
              {obj.codigo_asignatura}
            </a>
          </td>
          <td id="green">{obj.nombre_ingles}</td>
          <td id="green">{obj.plazas_disponibles}</td>
          <td id="green">{obj.estado_solicitud}</td>
          <td id="green">
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {/if}
      {/if}
    </tr>
  {/each}
</table>
