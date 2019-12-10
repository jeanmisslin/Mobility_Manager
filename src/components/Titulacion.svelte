<script>
  export let ofertas;
  export let titulaciones;
  export let codigo;

  let { codigo_titulacion, nombre_ingles } = titulaciones;
</script>

<style>
  #titulacion {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 100%;
    font-weight: 650;
    font-size: 19px;
    background-color: rgb(230, 245, 255);
    color: black;
    border: 1px solid black;
  }

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

{#each titulaciones as t}
  {#if t.codigo_titulacion === codigo}
    <div id="titulacion">
      <p>{t.nombre_ingles}</p>
    </div>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>DISPONIBLES</th>
        <th>CONCEDIDAS</th>
      </tr>
      {#each ofertas as o}
        {#if o.titulacion === codigo}
          <tr>
            <td>{o.codigo_asignatura}</td>
            <td>{o.nombre_ingles}</td>
            <td>{o.idioma}</td>
            <td>{o.ects}</td>
            <td>{o.plazas_disponibles}</td>
            <td>{o.plazas_concedidas}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {/if}
{/each}
