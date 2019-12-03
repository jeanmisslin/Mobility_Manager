<script>
  export let a, asignaturas;

  let mostrar_todas = { mostrar: false };
  let mostrar_concedidas = { mostrar: false };
  let mostrar_eliminadas = { mostrar: false };
  let mostrar_denegadas = { mostrar: false };
  let mostrar_descartadas = { mostrar: false };

  function todas() {
    mostrar_todas.mostrar = !mostrar_todas.mostrar;
  }

  function concedidas() {
    mostrar_concedidas.mostrar = !mostrar_concedidas.mostrar;
  }

  function eliminadas() {
    mostrar_eliminadas.mostrar = !mostrar_eliminadas.mostrar;
  }

  function denegadas() {
    mostrar_denegadas.mostrar = !mostrar_denegadas.mostrar;
  }

  function descartadas() {
    mostrar_descartadas.mostrar = !mostrar_descartadas.mostrar;
  }
</script>

<style>
  #acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 120px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
    color: black;
    border: 1px solid black;
  }

  #contenido_acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-left: 20px;
    height: 110px;
    width: 500px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }

/*
  #asignaturas {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 100%;
    height: 100%;
  }
*/

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

<div id="acuerdo">
  <div id="contenido_acuerdo">
    <p>
      Año: {a.año}-{a.año + 1}
      <br />
      Cuatrimestre: {a.cuatrimestre}
      <br />
      Titulación: {a.nombre_castellano}
      <br />
      Estado: {a.estado}
    </p>
  </div>
</div>

{#if mostrar_todas.mostrar}
  <button on:click={todas}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as s}
      {#if s.acuerdo_academico == a.id_acuerdo}
        <tr>
          <td>{s.codigo_asignatura}</td>
          <td>{s.nombre_ingles}</td>
          <td>{s.idioma}</td>
          <td>{s.ects}</td>
          <td>{s.estado_solicitud}</td>
        </tr>
      {/if}
    {/each}
  </table>
{:else}
  <button on:click={todas}>Mostrar Todas las Asignaturas</button>
{/if}

{#if mostrar_concedidas.mostrar}
  <button on:click={concedidas}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as s}
      {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'concedida')}
        <tr>
          <td>{s.codigo_asignatura}</td>
          <td>{s.nombre_ingles}</td>
          <td>{s.idioma}</td>
          <td>{s.ects}</td>
          <td>{s.estado_solicitud}</td>
        </tr>
      {/if}
    {/each}
  </table>
{:else}
  <button on:click={concedidas}>Mostrar Concedidas</button>
{/if}

{#if mostrar_eliminadas.mostrar}
  <button on:click={eliminadas}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as s}
      {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'eliminada')}
        <tr>
          <td>{s.codigo_asignatura}</td>
          <td>{s.nombre_ingles}</td>
          <td>{s.idioma}</td>
          <td>{s.ects}</td>
          <td>{s.estado_solicitud}</td>
        </tr>
      {/if}
    {/each}
  </table>
{:else}
  <button on:click={eliminadas}>Mostrar Eliminadas</button>
{/if}

{#if mostrar_denegadas.mostrar}
  <button on:click={denegadas}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as s}
      {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'denegada')}
        <tr>
          <td>{s.codigo_asignatura}</td>
          <td>{s.nombre_ingles}</td>
          <td>{s.idioma}</td>
          <td>{s.ects}</td>
          <td>{s.estado_solicitud}</td>
        </tr>
      {/if}
    {/each}
  </table>
{:else}
  <button on:click={denegadas}>Mostrar Denegadas</button>
{/if}

{#if mostrar_descartadas.mostrar}
  <button on:click={descartadas}>Ocultar</button>
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
      <th>ESTADO</th>
    </tr>
    {#each asignaturas as s}
      {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'descartada')}
        <tr>
          <td>{s.codigo_asignatura}</td>
          <td>{s.nombre_ingles}</td>
          <td>{s.idioma}</td>
          <td>{s.ects}</td>
          <td>{s.estado_solicitud}</td>
        </tr>
      {/if}
    {/each}
  </table>
{:else}
  <button on:click={descartadas}>Mostrar Descartadas</button>
{/if}
