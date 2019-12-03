<script>
  export let asignaturas;
  export let button_text;

  let mostrar = false;

  function alternar() {
    mostrar = !mostrar;
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
    background-color: rgb(117, 182, 226);
    color: black;
  }

  tr:nth-child(even) {
    background-color: rgb(255, 246, 239);
  }
</style>

{#if mostrar}
  <button on:click={alternar}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as a}
      <tr>
        <td>{a.codigo_asignatura}</td>
        <td>{a.nombre_ingles}</td>
        <td>{a.idioma}</td>
        <td>{a.ects}</td>
        <td>{a.estado_solicitud}</td>
      </tr>
    {/each}
  </table>
{:else}
  <button on:click={alternar}>{button_text}</button>
{/if}
