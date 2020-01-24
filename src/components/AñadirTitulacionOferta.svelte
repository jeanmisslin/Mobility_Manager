<script>
  export let titulaciones;
  export let oferta;

  let array = oferta.titulacion.split(",");

  let message;
  let añade = "";
  
  let modificacion = {
    oferta: oferta.id_oferta,
    titulacion: oferta.titulacion  
  };

  function encontrartitulacion(a, t) {
    let i;
    for (i = 0; i != a.length; i++)
      if (array[i] === t) {
        return true;
      }
    return false;
  }

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
          console.log(modificacion);
          message = "nueva oferta guardada";
        }
      });
  }

  function ejecutarambas() {
    modificacion.titulacion = modificacion.titulacion + "," + añade;
    modificaoferta();
  }

  function abrir() {
    modificacion = { ...modificacion, open: true };
  }

  function cerrar() {
    modificacion = { ...modificacion, open: false };
  }
</script>

{#if modificacion.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Titulación:
            <select name="titu" bind:value={añade}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
              {#if !encontrartitulacion(array, t.codigo_titulacion)}
                <option value={t.codigo_titulacion}>
                  {t.titulacion_catalan}
                </option>
                {/if}
              {/each}
            </select>
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={ejecutarambas}>Salvar</button>
          <button on:click={cerrar}>Cancelar</button>
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
      <button on:click={abrir}>Añadir Titulacion</button>
    </div>
  </div>
{/if}
