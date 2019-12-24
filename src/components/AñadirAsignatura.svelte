<script>
  export let oferta;
  export let acuerdo;

  import RestarPlazaDisponible from "./RestarPlazaDisponible.svelte";

  let estados = [`Concedida`, `Denegada`, `Solicitada`];

  let message;

  let asignacion = {
    acuerdo: acuerdo,
    oferta: oferta,
    estado: ""
  };

  let modificacion = {
    disponibles: oferta.plazas_disponibles - 1,
    concedidas: oferta.plazas_concedidas + 1,
    asignatura: oferta.asignatura
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

  function restar() {
    fetch(`restarplazadisponible.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
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

  function ejecutarambas() {
    asignar();
    restar();
  }
</script>

{#if asignacion.open}
  <div>
    <select name="est" bind:value={asignacion.estado}>
      <option value="">Selecciona un estado...</option>
      {#each estados as e}
        <option value={e}>{e}</option>
      {/each}
    </select>
    {#if asignacion.estado === 'Concedida'}
      <button on:click={ejecutarambas}>Salvar</button>
      <button on:click={() => (asignacion.open = false)}>Cancelar</button>
    {:else}
      <button on:click={asignar}>Salvar</button>
      <button on:click={() => (asignacion.open = false)}>Cancelar</button>
    {/if}
  </div>
  <div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
  <div id="buttons">
    <div id="field">
      <button on:click={() => (asignacion.open = true)}>Añadir</button>
    </div>
  </div>
{/if}
