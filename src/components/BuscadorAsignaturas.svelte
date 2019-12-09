<script>
  export let tabla;
  export let asignaturas;

  let filtro = "";

  $: asignaturasFiltradas = asignaturas.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_asignatura, filtro) ||
      strIn(e.nombre_catalan, filtro) ||
      strIn(e.nombre_castellano, filtro) ||
      strIn(e.nombre_ingles, filtro) ||
      strIn(e.idioma, filtro)
    );
  });
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

<div id="filtro">
  <p>
    BUSCADOR:
    <input
      type="text"
      bind:value={filtro}
      placeholder="Introduce la palabra clave"
      title="Type in a name" />
  </p>
</div>

{#if tabla === 'asignaturas'}
  <table id="tabla">
    <tr>
      <th>CODIGO</th>
      <th>TÍTULO</th>
      <th>IDIOMA</th>
      <th>ECTS</th>
    </tr>
    {#each asignaturasFiltradas as a}
      <tr>
        <td>
          <a href="/asignatura/{a.codigo_asignatura}">{a.codigo_asignatura}</a>
        </td>
        <td>
          <a href={a.plan_de_estudios_ingles}>{a.nombre_ingles}</a>
        </td>
        <td>{a.idioma}</td>
        <td>{a.ects}</td>
      </tr>
    {/each}
  </table>
{/if}
