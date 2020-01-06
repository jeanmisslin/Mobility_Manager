<script>
  export let ofertas;
  export let periodo;
  export let asignatura;
  export let titulaciones;
  export let asignaciones;

  import ModificaTitulacionOferta from "./ModificaTitulacionOferta.svelte";
  import EliminarOferta from "./EliminarOferta.svelte";

</script>

<style>
  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 10px;
    margin-top: 25px;
  }

  td {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
  }

  th {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
    background-color: rgb(117, 182, 226);
    color: black;
  }

  tr:nth-child(even) {
    background-color: rgb(255, 246, 239);
  }
</style>

<table id="tabla">
    <tr>
      <th>TITULACIONES QUE LA OFERTAN</th>
      <th>ELIMINAR OFERTA</th>
    </tr>
    {#each ofertas as o}
    <tr>
    {#if o.periodo_academico === periodo && o.asignatura === asignatura}
      <td>{o.titulacion_ingles}</td>
      <td><EliminarOferta oferta={o.id_oferta} {asignaciones}/></td>
      {/if}
      </tr>
    {/each}
  </table>
  