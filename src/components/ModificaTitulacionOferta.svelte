<script>
  export let oferta;
  export let titulaciones;

  let {
    id_oferta,
    periodo_academico,
    titulacion,
    codigo_asignatura,
    plazas_ofertadas,
    plazas_disponibles,
    plazas_concedidas,
    plazas_solicitadas,
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
    plazas_concedidas: plazas_concedidas,
    plazas_solicitadas: plazas_solicitadas
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
</style>

{#if modificaoferta.open}
  <div class="request-box">
    <div id="textfield">
          <p>
            <select name="titu" bind:value={modificaoferta.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
          </p>
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
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaoferta.open = true)}>Modificar</button>
    </div>
  </div>
{/if}
