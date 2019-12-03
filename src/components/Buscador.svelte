<script>
  export let tabla;
  export let estudiantes;

  let filtro = "";

  $: estudiantesFiltrados = estudiantes.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.nombre, filtro) ||
      strIn(e.apellidos, filtro) ||
      strIn(e.universidad, filtro) ||
      strIn(e.pais, filtro)
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

{#if tabla === 'estudiantes'}
  <table id="tabla">
    <tr>
      <th>APELLIDOS</th>
      <th>NOMBRE</th>
      <th>UNIVERSIDAD</th>
      <th>PAÍS</th>
      <th>EMAIL</th>
    </tr>
    {#each estudiantesFiltrados as e}
      <tr>
        <td>
          <a href="/estudiante/{e.email}">{e.apellidos}</a>
        </td>
        <td>{e.nombre}</td>
        <td>{e.universidad}</td>
        <td>{e.pais}</td>
        <td>{e.email}</td>
      </tr>
    {/each}
  </table>
{/if}
