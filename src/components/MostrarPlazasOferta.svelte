<script>
  export let oferta;

  import ModificaPlazasOferta from "./ModificaPlazasOferta.svelte";
  
  function modificarPlazasEnCaliente(ofertadas) {
    oferta.plazas_ofertadas = ofertadas;
    oferta.plazas_disponibles = oferta.plazas_ofertadas - oferta.plazas_concedidas;
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
    background-color: white
    ;
  }
</style>

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

  <ModificaPlazasOferta {oferta} onModificado={modificarPlazasEnCaliente}/>