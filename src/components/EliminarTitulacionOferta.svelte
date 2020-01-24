<script>
  export let elimina;
  export let oferta;

  let array = oferta.titulacion.split(",");

  let message;

  function reconstruir(array, elimina) {
    let i;
    let modificada = "";
    for (i = 0; i != array.length; i++)
      if (array[i] != elimina && i<array.length-1) {
        modificada = modificada + array[i] + ",";
      } else if (array[i] != elimina && i===array.length-1) {
        modificada = modificada + array[i];
      }
      return modificada;
  }

  let modificacion = {
    oferta: oferta.id_oferta,
    titulacion: reconstruir(array,elimina)
  };

  function modificaoferta() {
    fetch(`modificatitulacionesoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nueva oferta guardada";
        }
      });
  }
</script>

{#if modificacion.open}
  <div class="request-box">
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificaoferta}>Salvar</button>
          <button on:click={() => (modificacion.open = false)}>Cancelar</button>
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
      <button on:click={() => (modificacion.open = true)}>Eliminar</button>
    </div>
  </div>
{/if}
