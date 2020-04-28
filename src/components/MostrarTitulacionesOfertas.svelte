<script>
  export let oferta;
  export let titulaciones;

  import EliminarTitulacionOferta from "./EliminarTitulacionOferta.svelte";
  import AñadirTitulacionOferta from "./AñadirTitulacionOferta.svelte";

  let titulacion;
  let array;
  
  $: array = oferta.titulacion.split(",");

  let message;

  function modificarOfertaEnCaliente(nueva) {
    oferta.titulacion = nueva;
  }
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
    background-color: white;
    color: black;
  }

  tr:nth-child(even) {
    background-color:white;
  }
</style>

<table id="tabla">
  <tr>
    <th>TITULACIONES QUE LA OFERTAN</th>
    <th>ELIMINAR TITULACIÓN</th>
  </tr>
  {#each array as a}
    {#each titulaciones as t}
      {#if t.codigo_titulacion === a}
        <tr>
          <td>{t.titulacion_castellano}</td>
          <td>
            <EliminarTitulacionOferta {oferta} elimina={a} onModificado={modificarOfertaEnCaliente} />
          </td>
        </tr>
      {/if}
    {/each}
  {/each}
</table>

<AñadirTitulacionOferta {titulaciones} {oferta} onModificado={modificarOfertaEnCaliente}/>