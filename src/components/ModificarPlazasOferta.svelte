<script>
  export let oferta;

  let {
    asignatura,
    plazas_ofertadas,
    plazas_concedidas
  } = oferta;

  let modificaoferta = {
    asignatura: asignatura,
    plazas_ofertadas: plazas_ofertadas,
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
    height: 40px;
    width: 360px;
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
    height: 30px;
    width: 360px;
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
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaoferta.open = true)}>Modificar Plazas Ofertadas</button>
    </div>
  </div>
{/if}
