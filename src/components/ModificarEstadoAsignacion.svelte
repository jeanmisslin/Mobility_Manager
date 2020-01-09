<script>
  export let asignatura;
  export let acuerdo;

  let estados = [`Concedida`, `Denegada`, `Solicitada`, `Descartada`, `Eliminada`];

  let message;

  let {
    id_oferta,
    id_asignacion,
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
    plazas_concedidas,
    estado_solicitud
  } = asignatura;

  let asignacion = {
    id: id_asignacion,
    previo: estado_solicitud,
    estado: estado_solicitud
  };

  let modificacion = {
    disponibles: plazas_disponibles,
    concedidas: plazas_concedidas,
    asignatura: codigo_asignatura,
    periodo: acuerdo.periodo_academico
  };

  function modificarasignacion() {
    fetch(`modificarasignacion.json`, {
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

  function incrementar() {
    fetch(`incrementarplazadisponible.json`, {
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

  function ejecutarresta() {
    modificarasignacion();
    restar();
  }

  function ejecutarincremento() {
    modificarasignacion();
    incrementar();
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
    {#if asignacion.previo !== 'Concedida' && asignacion.estado === 'Concedida'}
      <button on:click={ejecutarresta}>Salvar</button>
      <button on:click={() => (asignacion.open = false)}>Cancelar</button>
    {:else if asignacion.previo === 'Concedida' && asignacion.estado !== 'Concedida'}
      <button on:click={ejecutarincremento}>Salvar</button>
      <button on:click={() => (asignacion.open = false)}>Cancelar</button>
    {:else}
      <button on:click={modificarasignacion}>Salvar</button>
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
      <button on:click={() => (asignacion.open = true)}>Modificar</button>
    </div>
  </div>
{/if}
