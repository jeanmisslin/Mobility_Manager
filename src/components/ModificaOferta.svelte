<script>
  export let oferta;
  export let titulaciones;
  export let periodos;

  let {
    id_oferta,
    periodo_academico,
    titulacion,
    codigo_asignatura,
    plazas_ofertadas,
    plazas_disponibles,
    plazas_concedidas,
    titulacion_catalan,
    titulacion_castellano,
    titulacion_ingles
  } = oferta;

  let modificaoferta = {
    oferta: id_oferta,
    periodo: periodo_academico,
    titulacion: titulacion,
    plazas_ofertadas: plazas_ofertadas,
    plazas_disponibles: plazas_disponibles,
    plazas_concedidas: plazas_concedidas
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
  #datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 110px;
    width: 85%;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
    color: black;
    border: 1px solid black;
  }

  #contenido_datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-left: 20px;
    margin-right: 1px;
    height: 100px;
    width: 780px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }
</style>

{#if modificaoferta.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Periodo Académico:
            <select name="per" bind:value={modificaoferta.periodo_academico}>
              <option value="">Selecciona un periodo académico...</option>
              {#each periodos as p}
                <option value={p.id_periodo}>
                  {p.año}-{p.año + 1}, Q{p.cuatrimestre}
                </option>
              {/each}
            </select>
            <br />
            Titulación:
            <select name="titu" bind:value={modificaoferta.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
            <br />
            Plazas Ofertadas:
            <input type="text" bind:value={modificaoferta.plazas_ofertadas} />
            <br />
          </p>
        </div>
      </div>
    </div>
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
  <div id="datos">
    <div id="contenido_datos">
      <p>
        <i>Titulación</i>
        : {titulacion_ingles}
        <br />
        <i>Plazas Ofertadas</i>
        : {plazas_ofertadas}
        <br />
        <i>Plazas Disponibles</i>
        : {plazas_disponibles}
        <br />
        <i>Plazas Concedidas</i>
        : {plazas_concedidas}
      </p>
    </div>
  </div>
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaoferta.open = true)}>Modificar</button>
    </div>
  </div>
{/if}
