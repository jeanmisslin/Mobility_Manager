<script>
  export let ofertas;
  export let periodo;
  export let asignatura;
  export let titulaciones;
  export let asignaciones;

  import MostrarTitulacionesOfertas from "./MostrarTitulacionesOfertas.svelte";
  import AñadirOferta from "./AñadirOferta.svelte";
  import ModificarPlazasOferta from "./ModificarPlazasOferta.svelte";

  let oferta = ofertas.find(
    element =>
      element.asignatura === asignatura &&
      element.periodo_academico === periodo.id_periodo
  );

  let { id_periodo } = periodo;

  let message;
</script>

<style>
  #periodo {
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 25%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
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

  #no_se_oferta {
    border: 1px solid black;
    text-align: center;
    font-weight: 700;
    padding: 3px;
    width: 100%;
    background-color: rgb(117, 182, 226);
    color: black;
  }
</style>

{#if oferta === null || oferta === undefined}
  <div id="periodo">
    <div>Q{periodo.cuatrimestre}, {periodo.año}</div>
  </div>
  <AñadirOferta {asignatura} {titulaciones} periodo={id_periodo} />
{:else}
  <div id="periodo">
    <div>Q{periodo.cuatrimestre}, {periodo.año}</div>
  </div>
  <table id="tabla">
    <tr>
      <th>PLAZAS OFERTADAS</th>
      <th>PLAZAS DISPONIBLES</th>
      <th>PLAZAS SOLICITADAS</th>
      <th>PLAZAS CONCEDIDAS</th>
    </tr>
    <tr>
      <td>{oferta.plazas_ofertadas}</td>
      <td>{oferta.plazas_disponibles}</td>
      <td>{oferta.plazas_solicitadas}</td>
      <td>{oferta.plazas_concedidas}</td>
    </tr>
  </table>
  <ModificarPlazasOferta {oferta}/>
  <MostrarTitulacionesOfertas
    {ofertas}
    {asignatura}
    periodo={id_periodo}
    {titulaciones}
    {asignaciones} />
{/if}
