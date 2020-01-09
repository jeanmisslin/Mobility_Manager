<script>
  export let asignaturas;
  export let acuerdo;

  let { id_acuerdo } = acuerdo;

  import ModificarEstadoAsignacion from "./ModificarEstadoAsignacion.svelte";

  let filtro = "";

  $: asignaturasFiltradas = asignaturas.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_asignatura, filtro) ||
      strIn(e.nombre_catalan, filtro) ||
      strIn(e.nombre_castellano, filtro) ||
      strIn(e.nombre_ingles, filtro) ||
      strIn(e.titulacion_catalan, filtro) ||
      strIn(e.titulacion_castellano, filtro) ||
      strIn(e.titulacion_ingles, filtro) ||
      strIn(e.idioma, filtro)
    );
  });
</script>

<style>
  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 0px;
    margin-top: 0px;
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

  #existentes {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 50%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }

  #scroll {
    overflow: scroll;
    margin-top: 20px;
    height: 204px;
    width: 100%;
    border: 1px solid black;
  }
</style>

<div id="existentes">ASIGNATURAS SOLICITADAS</div>
<div>
BUSCADOR:
  <input
    type="text"
    bind:value={filtro}
    placeholder="Introduce la palabra clave"
    title="Type in a name" />
</div>

<div id="scroll">
<table id="tabla">
  <tr>
    <th>CÓDIGO</th>
    <th>TÍTULO</th>
    <th>IDIOMA</th>
    <th>ECTS</th>
    <th>ESTADO</th>
    <th>SOLICITAR</th>
  </tr>
  {#each asignaturas as a}
    <tr>
        <td>{a.codigo_asignatura}</td>
        <td>{a.nombre_ingles}</td>
        <td>{a.idioma}</td>
        <td>{a.ects}</td>
        <td>{a.estado_solicitud}</td>
        <td>
          <ModificarEstadoAsignacion asignatura={a} {acuerdo} />
        </td>
    </tr>
  {/each}
</table>
</div>
