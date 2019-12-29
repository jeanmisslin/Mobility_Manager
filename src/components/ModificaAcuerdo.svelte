<script>
  export let periodos;
  export let acuerdo;
  export let titulaciones;

  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado`];

  let {
    id_acuerdo,
    estudiante,
    titulacion,
    periodo_academico,
    estado
  } = acuerdo;

  let modificaacuerdo = {
    id_acuerdo: id_acuerdo,
    estudiante: estudiante,
    titulacion: titulacion,
    periodo_academico: periodo_academico,
    estado: estado
  };

  let message;

  function modificaracuerdo() {
    fetch(`/estudiante/modificaacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaacuerdo)
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
  #acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 120px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
    color: black;
    border: 1px solid black;
  }

  #contenido_acuerdo {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-left: 20px;
    height: 110px;
    width: 500px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }
</style>

{#if modificaacuerdo.open}
  <div class="request-box">
    <div id="textfield">
      <div id="acuerdo">
        <div id="contenido_acuerdo">
          <p>
            Periodo Académico:
            <select name="per" bind:value={modificaacuerdo.periodo_academico}>
              <option value="">Selecciona un periodo académico...</option>
              {#each periodos as p}
                <option value={p.id_periodo}>
                  {p.año}-{p.año + 1}, Q{p.cuatrimestre}
                </option>
              {/each}
            </select>
            <br />
            Titulación:
            <select name="titu" bind:value={modificaacuerdo.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
            <br />
            Estado:
            <select name="est" bind:value={modificaacuerdo.estado}>
              <option value="">Selecciona un estado...</option>
              {#each estados as e}
                <option value={e}>{e}</option>
              {/each}
            </select>
            <br />
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificaracuerdo}>Salvar</button>
          <button on:click={() => (modificaacuerdo.open = false)}>
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
  <div id="acuerdo">
    <div id="contenido_acuerdo">
      <p>
        Año: {acuerdo.año}-{acuerdo.año + 1}
        <br />
        Cuatrimestre: {acuerdo.cuatrimestre}
        <br />
        Titulación: {acuerdo.titulacion_castellano}
        <br />
        Estado: {acuerdo.estado}
      </p>
    </div>
  </div>
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaacuerdo.open = true)}>Modificar</button>
    </div>
  </div>
{/if}
