<script>
  export let oferta;
  export let acuerdo;

  let estados = [`Concedida`, `Denegada`, `Solicitada`];

  let message;

  let {
    id_oferta,
    codigo_asignatura,
    nombre_catalan,
    nombre_castellano,
    nombre_ingles,
    idioma,
    ects,
    plan_de_estudios_catalan,
    plan_de_estudios_castellano,
    plan_de_estudios_ingles,
    plazas_disponibles,
    plazas_concedidas
  } = oferta;

  let asignacion = {
    acuerdo: acuerdo,
    oferta: id_oferta,
    estado: ""
  };

  let modificacion = {
    disponibles: plazas_disponibles,
    concedidas: plazas_concedidas,
    asignatura: codigo_asignatura
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
          message = "oferta guardada";
        }
      });
  }

  function ejecutarambas() {
    asignar();
    restar();
  }
</script>

<style>
#boton {
  display: flex;
}
</style>

{#if asignacion.open}
  <div id="boton">
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
