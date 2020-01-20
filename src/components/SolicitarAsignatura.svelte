<script>
  export let oferta;
  export let acuerdo;

  let message;
  let asignacion;
  let modificacion;

  $: console.log("Id: ", oferta.id_oferta, ", Asignatura: ", oferta.asignatura);

  $: asignacion = {
    open: false,
    acuerdo: acuerdo,
    oferta: oferta.id_oferta,
    estado: "Solicitada"
  };

  $: modificacion = {
    solicitadas: oferta.plazas_solicitadas,
    asignatura: oferta.asignatura,
    periodo: oferta.periodo_academico
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
    console.log("Click!!");
    asignar();
    solicitar();
  }

  function abrir() {
    asignacion = { ...asignacion, open: true };
  }

  function cerrar() {
    asignacion = { ...asignacion, open: false };
  }
</script>

<style>

</style>

{#if asignacion.open}
  <div id="buttons">
    <button on:click={ejecutarambas}>Salvar</button>
    <button on:click={cerrar}>Cancelar</button>
  </div>
  <div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
  <div id="buttons">
    <div id="field">
      <button on:click={abrir}>Solicitar</button>
    </div>
  </div>
{/if}
