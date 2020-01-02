<script>
  export let asignatura;
  export let titulaciones;
  export let periodos;

  let nuevaoferta = {
    asignatura: asignatura,
    periodo: "",
    titulacion: "",
    plazas_ofertadas: ""
  };

  let message;

  function añadiroferta() {
    fetch(`/asignatura/añadiroferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaoferta)
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

<style>
  #datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 110px;
    width: 85%;
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
    height: 100px;
    width: 780px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }
</style>

{#if nuevaoferta.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Periodo Académico:
            <select name="per" bind:value={nuevaoferta.periodo_academico}>
              <option value="">Selecciona un periodo académico...</option>
              {#each periodos as p}
                <option value={p.id_periodo}>
                  {p.año}-{p.año + 1}, Q{p.cuatrimestre}
                </option>
              {/each}
            </select>
            <br />
            Titulación:
            <select name="titu" bind:value={nuevaoferta.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
            <br />
            Plazas Ofertadas:
            <input type="text" bind:value={nuevaoferta.plazas_ofertadas} />
            <br />
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={añadiroferta}>Salvar</button>
          <button on:click={() => (nuevaoferta.open = false)}>
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
      <button on:click={() => (nuevaoferta.open = true)}>Nueva Oferta</button>
    </div>
  </div>
{/if}
