<script>
  export let periodos;
  export let estudiante;
  export let titulaciones;

  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado`];

  let nuevoacuerdo = {
    open: false,
    titulacion: "",
    periodo_academico: "",
    estado: ""
  };

  let nuevoestudiante = {
    email: estudiante
  };

  let message;

  function añadiracuerdo() {
    fetch(`nuevoacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        acuerdo: nuevoacuerdo,
        estudiante: nuevoestudiante
      })
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoacuerdo saved";
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

{#if nuevoacuerdo.open}
  <div class="request-box">
    <div id="textfield">
      <div id="acuerdo">
        <div id="contenido_acuerdo">
          <p>
            Periodo Académico:
            <select name="per" bind:value={nuevoacuerdo.periodo_academico}>
              <option value="">Selecciona un periodo académico...</option>
              {#each periodos as p}
                <option value={p.id_periodo}>
                  {p.año}-{p.año + 1}, Q{p.cuatrimestre}
                </option>
              {/each}
            </select>
            <br />
            Titulación:
            <select name="titu" bind:value={nuevoacuerdo.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
            <br />
            Estado:
            <select name="est" bind:value={nuevoacuerdo.estado}>
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
        {#if nuevoacuerdo.periodo_academico === '' || nuevoacuerdo.titulacion === '' || nuevoacuerdo.estado === ''}
              <button on:click={() => (nuevoacuerdo.open = false)}>
            Cancelar
          </button>
            {:else}
              <button on:click={añadiracuerdo}>Salvar</button>
          <button on:click={() => (nuevoacuerdo.open = false)}>
            Cancelar
          </button>
            {/if}
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
      <button on:click={() => (nuevoacuerdo.open = true)}>Nuevo Acuerdo</button>
    </div>
  </div>
{/if}
