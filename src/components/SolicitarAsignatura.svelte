<script>
  export let oferta;
  export let acuerdo;

  let estados = [`Concedida`, `Denegada`, `Solicitada`];

  let message;

  let { id_oferta } = oferta;

  let asignacion = {
    acuerdo: acuerdo,
    oferta: id_oferta,
    estado: "Solicitada"
  };

  let modificacion = {
    solicitadas: plazas_solicitadas,
    asignatura: codigo_asignatura,
    periodo: periodo_academico
  };

  function asignar() {
    fetch(`nuevaasignacion.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(asignacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "asignacion guardada";
        }
      });
  }

  function solicitar() {
    fetch(`solicitarasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "oferta guardada";
        }
      });
  }

  function ejecutarambas() {
    asignar();
    solicitar();
  }
</script>

<style>

</style>

{#if asignacion.open}
  <div id="buttons">
    <button on:click={ejecutarambas}>Salvar</button>
    <button on:click={() => (asignacion.open = false)}>Cancelar</button>
  </div>
  <div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
  <div id="buttons">
    <div id="field">
      <button on:click={() => (asignacion.open = true)}>Solicitar</button>
    </div>
  </div>
{/if}
