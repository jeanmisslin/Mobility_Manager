<script>
  export let ofertas;
  export let acuerdo;
  export let asignaciones;
  export let asignaturas;

  import MostrarTitulacionesOfertas from "./MostrarTitulacionesOfertas.svelte";
  import AñadirOferta from "./AñadirOferta.svelte";
  import ModificarPlazasOferta from "./ModificarPlazasOferta.svelte";
  import AñadirAsignacion from "./AñadirAsignacion.svelte";
  import ModificarEstadoAsignacion from "./ModificarEstadoAsignacion.svelte";
  import SolicitarAsignatura from "./SolicitarAsignatura.svelte";

  let { id_periodo } = periodo;
  let { id_acuerdo } = acuerdo;

  let message;
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

  #recomendadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 40%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }

  #solicitadas {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 40%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }
</style>

<div id="recomendadas">ASIGNATURAS RECOMENDADAS</div>

<table id="tabla">
  <tr>
    <th>CÓDIGO</th>
    <th>TÍTULO</th>
    <th>IDIOMA</th>
    <th>ECTS</th>
    <th>VACANTES</th>
    <th>SOLICITAR</th>
  </tr>
  {#each ofertas as o}
    <tr>
      {#if o.titulacion === acuerdo.titulacion}
        <td>{o.codigo_asignatura}</td>
        <td>{o.nombre_ingles}</td>
        <td>{o.idioma}</td>
        <td>{o.ects}</td>
        <td>{o.plazas_disponibles}</td>
        <td>
          <SolicitarAsignatura acuerdo={id_acuerdo} oferta={o} />
        </td>
      {/if}
    </tr>
  {/each}
</table>

<div id="solicitadas">ASIGNATURAS SOLICITADAS</div>

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

<div id="solicitadas">ASIGNATURAS OFERTADAS</div>

<table id="tabla">
  <tr>
    <th>CÓDIGO</th>
    <th>TÍTULO</th>
    <th>TITULACIÓN</th>
    <th>IDIOMA</th>
    <th>ECTS</th>
    <th>VACANTES</th>
    <th>AÑADIR</th>
  </tr>
  {#each ofertas as o}
    <tr>
        <td>{o.codigo_asignatura}</td>
        <td>{o.nombre_ingles}</td>
        <td>{o.titulacion_ingles}</td>
        <td>{o.idioma}</td>
        <td>{o.ects}</td>
        <td>{o.plazas_disponibles}</td>
        <td>
          <SolicitarAsignatura acuerdo={id_acuerdo} oferta={o} />
        </td>
    </tr>
  {/each}
</table>
