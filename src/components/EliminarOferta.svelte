<script>
  export let oferta;
  export let asignaciones;

  let eliminaoferta = {
    oferta: oferta
  };

  let asignacion = asignaciones.find(element => element.oferta === oferta);

  let message;

  function eliminaroferta() {
    fetch(`/asignatura/eliminaoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(eliminaoferta)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "eliminacion guardada";
        }
      });
  }
</script>

<style>

</style>

{#if eliminaoferta.open}
  <div class="request-box">
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={eliminaroferta}>Salvar</button>
          <button on:click={() => (eliminaoferta.open = false)}>
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
  {#if asignacion === null || asignacion === undefined}
    <div id="buttons">
      <div id="field">
        <button on:click={() => (eliminaoferta.open = true)}>
          Eliminar Oferta
        </button>
      </div>
    </div>
  {:else}
    <div id="buttons">
      <div id="field">
        <button>Oferta Asignada</button>
      </div>
    </div>
  {/if}
{/if}
