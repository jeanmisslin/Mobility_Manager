<script>
  export let oferta;

  let { asignatura, plazas_ofertadas, plazas_concedidas, periodo_academico } = oferta;

  let modificaoferta = {
    asignatura: asignatura,
    plazas_ofertadas: plazas_ofertadas,
    plazas_concedidas: plazas_concedidas,
    periodo_academico: periodo_academico
  };

  let message;

  function modificaroferta() {
    fetch(`/asignatura/modificaoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaoferta)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
      });
  }
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
</style>

{#if modificaoferta.open}
  <div class="request-box">
    <div id="periodo">
      <div>Q{oferta.cuatrimestre}, {oferta.año}</div>
    </div>
    <table id="tabla">
      <tr>
        <th>PLAZAS OFERTADAS</th>
        <th>PLAZAS DISPONIBLES</th>
        <th>PLAZAS SOLICITADAS</th>
        <th>PLAZAS CONCEDIDAS</th>
      </tr>
      <tr>
        <td><input type="text" size="1" maxlength="2" bind:value={modificaoferta.plazas_ofertadas} /></td>
        <td>{oferta.plazas_disponibles}</td>
        <td>{oferta.plazas_solicitadas}</td>
        <td>{oferta.plazas_concedidas}</td>
      </tr>
    </table>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificaroferta}>Salvar</button>
          <button on:click={() => (modificaoferta.open = false)}>
            Cancelar
          </button>
        </div>
      </div>
    </div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
  <div id="periodo">
    <div>Q{oferta.cuatrimestre}, {oferta.año}</div>
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
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaoferta.open = true)}>
        Modificar Plazas Ofertadas
      </button>
    </div>
  </div>
{/if}


