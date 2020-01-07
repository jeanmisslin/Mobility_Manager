<script>
  export let asignatura;

  let idiomas = [`CAT`, `CAST`, `ING`, `CAT/CAST`, `CAT/ING`, `CAST/ING`, `CAT/CAST/ING`];

  let {
    codigo_asignatura,
    nombre_catalan,
    nombre_castellano,
    nombre_ingles,
    idioma,
    ects,
    plan_de_estudios_catalan,
    plan_de_estudios_castellano,
    plan_de_estudios_ingles
  } = asignatura;

  let modificaasignatura = {
    codigo: codigo_asignatura,
    ncat: nombre_catalan,
    ncast: nombre_castellano,
    ning: nombre_ingles,
    idioma: idioma,
    ects: ects,
    pscat: plan_de_estudios_catalan,
    pscast: plan_de_estudios_castellano,
    psing: plan_de_estudios_ingles 
  };

  let message;

  function modificarasignatura() {
    fetch(`/asignatura/modificaasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaasignatura)
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
  #datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 250px;
    width: 100%;
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
    height: 200px;
    width: 800px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }
</style>

{#if modificaasignatura.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Codigo:
            <input type="text" size="4" maxlength="7" bind:value={modificaasignatura.codigo} />
            <br />
            Nombre en Catalán:
            <input type="text" size="60" bind:value={modificaasignatura.ncat} />
            <br />
            Nombre en Catellano:
            <input type="text" size="58" bind:value={modificaasignatura.ncast} />
            <br />
            Nombre en Inglés:
            <input type="text" size="62" bind:value={modificaasignatura.ning} />
            <br />
            Idioma:
            <select name="idi" bind:value={modificaasignatura.idioma}>
              <option value="">Selecciona un estado...</option>
              {#each idiomas as i}
                <option value={i}>{i}</option>
              {/each}
            </select>
            <br />
            ECTS:
            <input type="text" size="1" maxlength="4" bind:value={modificaasignatura.ects} />
            <br />
            Plan de estudios en Catalán:
            <input type="text" size="54" bind:value={modificaasignatura.pscat} />
            <br />
            Plan de estudios en Castellano:
            <input type="text" size="51" bind:value={modificaasignatura.pscast} />
            <br />
            Plan de estudios en Inglés:
            <input type="text" size="56" bind:value={modificaasignatura.psing} />
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificarasignatura}>Salvar</button>
          <button on:click={() => (modificaasignatura.open = false)}>
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
  <div id="datos">
    <div id="contenido_datos">
      <p>
            <i>Codigo</i>: {codigo_asignatura}
            <br />
            <i>Nombre en Catalán</i>: {nombre_catalan}
            <br />
            <i>Nombre en Catellano</i>: {nombre_castellano}
            <br />
            <i>Nombre en Inglés</i>: {nombre_ingles}
            <br />
            <i>Idioma</i>: {idioma}
            <br />
            <i>ECTS</i>: {ects}
            <br />
            <i>Plan de estudios en Catalán</i>: <a href="{plan_de_estudios_catalan}">{plan_de_estudios_catalan}</a>
            <br />
            <i>Plan de estudios en Castellano</i>: <a href="{plan_de_estudios_castellano}">{plan_de_estudios_castellano}</a>
            <br />
            <i>Plan de estudios en Inglés</i>: <a href="{plan_de_estudios_ingles}">{plan_de_estudios_ingles}</a>
          </p>
    </div>
  </div>
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaasignatura.open = true)}>
        Modificar
      </button>
    </div>
  </div>
{/if}
