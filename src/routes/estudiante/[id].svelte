<script context="module">
  export async function preload({ params, query }) {
    const id = params.id;
    let estudiante = await this.fetch(`/estudiante/${id}.json`).then(body =>
      body.json()
    );
    let { universidades } = await this.fetch(`universidades.json`).then(body =>
      body.json()
    );
    return {
      estudiante,
      universidades
    };
  }
</script>

<script>
  export let estudiante;
  export let universidades;

  let {
    apellidos,
    nombre,
    universidad,
    codigo_universidad,
    pais,
    email,
    titulacion,
    id_acuerdo,
    acuerdos,
    asignaturas
  } = estudiante;

  let modificaestudiante = {
    open: false,
    estudiante: email,
    email: email,
    apellidos: apellidos,
    nombre: nombre,
    universidad: codigo_universidad
  };

  let message;

  let mostrar_todas = { mostrar: false };
  let mostrar_concedidas = { mostrar: false };
  let mostrar_eliminadas = { mostrar: false };
  let mostrar_denegadas = { mostrar: false };
  let mostrar_descartadas = { mostrar: false };

  function todas() {
    mostrar_todas.mostrar = !mostrar_todas.mostrar;
  }

  function concedidas() {
    mostrar_concedidas.mostrar = !mostrar_concedidas.mostrar;
  }

  function eliminadas() {
    mostrar_eliminadas.mostrar = !mostrar_eliminadas.mostrar;
  }

  function denegadas() {
    mostrar_denegadas.mostrar = !mostrar_denegadas.mostrar;
  }

  function descartadas() {
    mostrar_descartadas.mostrar = !mostrar_descartadas.mostrar;
  }

  function modificarestudiante() {
    fetch(`/estudiante/modificaestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaestudiante)
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
  #cabecera {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-bottom: 10px;
    height: 50px;
    width: 100%;
    background-color: rgb(117, 182, 226);
    border: 1px solid black;
  }

  #title {
    display: flex;
    font-weight: 500;
    font-size: 20pt;
    color: black;
    text-transform: uppercase;
  }

  #acuerdos {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 300px;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
    color: black;
    border: 1px solid black;
  }

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 300px;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
    color: black;
    border: 1px solid black;
  }

  #datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 150px;
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
    height: 140px;
    width: 500px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
  }

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

  #options {
    flex-direction: row;
    display: flex;
    align-items: center;
    justify-content: flex-end;
    border-bottom: groove;
    height: 25px;
    width: 100%;
    color: black;
  }

  #data {
    margin-left: 15px;
    margin-bottom: 10px;
    margin-top: 10px;
  }

  #asignaturas {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    width: 100%;
    height: 100%;
  }

  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 10px;
    margin-top: 25px;
  }

  td {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
  }

  th {
    border: 1px solid black;
    text-align: center;
    padding: 3px;
    background-color: rgb(117, 182, 226);
    color: black;
  }

  tr:nth-child(even) {
    background-color: rgb(255, 246, 239);
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">
  <div id="title">{apellidos}, {nombre}</div>
</div>

<div id="options">
  <div id="data">
    <a href="../">ESTUDIANTES</a>
    <a href="/asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div id="contenido">DATOS PERSONALES</div>

{#if modificaestudiante.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Apellidos:
            <input type="text" bind:value={modificaestudiante.apellidos} />
            <br />
            Nombre:
            <input type="text" bind:value={modificaestudiante.nombre} />
            <br />
            Universidad:
            <select name="uni" bind:value={modificaestudiante.universidad}>
              {#each universidades as u}
                <option value={u.codigo_universidad}>{u.universidad}</option>
              {/each}
            </select>
            <br />
            País: {pais}
            <br />
            Email:
            <input type="text" bind:value={modificaestudiante.email} />
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificarestudiante}>Salvar</button>
          <button on:click={() => (modificaestudiante.open = false)}>
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
        Apellidos: {apellidos}
        <br />
        Nombre: {nombre}
        <br />
        Universidad: {universidad}
        <br />
        País: {pais}
        <br />
        Email: {email}
      </p>
    </div>
  </div>
  <div id="buttons">
    <div id="field">
      <button on:click={() => (modificaestudiante.open = true)}>
        Modificar
      </button>
    </div>
  </div>
{/if}

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

{#each acuerdos as a}
  <div id="acuerdo">
    <div id="contenido_acuerdo">
      <p>
        Año: {a.año}-{a.año + 1}
        <br />
        Cuatrimestre: {a.cuatrimestre}
        <br />
        Titulación: {a.nombre_castellano}
        <br />
        Estado: {a.estado}
      </p>
    </div>
  </div>

  {#if mostrar_todas.mostrar}
    <button on:click={todas}>Ocultar</button>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>ESTADO</th>
      </tr>
      {#each asignaturas as s}
        {#if s.acuerdo_academico == a.id_acuerdo}
          <tr>
            <td>{s.codigo_asignatura}</td>
            <td>{s.nombre_ingles}</td>
            <td>{s.idioma}</td>
            <td>{s.ects}</td>
            <td>{s.estado_solicitud}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {:else}
    <button on:click={todas}>Mostrar Todas las Asignaturas</button>
  {/if}

  {#if mostrar_concedidas.mostrar}
    <button on:click={concedidas}>Ocultar</button>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>ESTADO</th>
      </tr>
      {#each asignaturas as s}
        {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'concedida')}
          <tr>
            <td>{s.codigo_asignatura}</td>
            <td>{s.nombre_ingles}</td>
            <td>{s.idioma}</td>
            <td>{s.ects}</td>
            <td>{s.estado_solicitud}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {:else}
    <button on:click={concedidas}>Mostrar Concedidas</button>
  {/if}

  {#if mostrar_eliminadas.mostrar}
    <button on:click={eliminadas}>Ocultar</button>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>ESTADO</th>
      </tr>
      {#each asignaturas as s}
        {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'eliminada')}
          <tr>
            <td>{s.codigo_asignatura}</td>
            <td>{s.nombre_ingles}</td>
            <td>{s.idioma}</td>
            <td>{s.ects}</td>
            <td>{s.estado_solicitud}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {:else}
    <button on:click={eliminadas}>Mostrar Eliminadas</button>
  {/if}

  {#if mostrar_denegadas.mostrar}
    <button on:click={denegadas}>Ocultar</button>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>ESTADO</th>
      </tr>
      {#each asignaturas as s}
        {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'denegada')}
          <tr>
            <td>{s.codigo_asignatura}</td>
            <td>{s.nombre_ingles}</td>
            <td>{s.idioma}</td>
            <td>{s.ects}</td>
            <td>{s.estado_solicitud}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {:else}
    <button on:click={denegadas}>Mostrar Denegadas</button>
  {/if}

  {#if mostrar_descartadas.mostrar}
    <button on:click={descartadas}>Ocultar</button>
    <table id="tabla">
      <tr>
        <th>CODIGO</th>
        <th>TÍTULO</th>
        <th>IDIOMA</th>
        <th>ECTS</th>
        <th>ESTADO</th>
      </tr>
      {#each asignaturas as s}
        {#if (s.acuerdo_academico == a.id_acuerdo) & (s.estado_solicitud == 'descartada')}
          <tr>
            <td>{s.codigo_asignatura}</td>
            <td>{s.nombre_ingles}</td>
            <td>{s.idioma}</td>
            <td>{s.ects}</td>
            <td>{s.estado_solicitud}</td>
          </tr>
        {/if}
      {/each}
    </table>
  {:else}
    <button on:click={descartadas}>Mostrar Descartadas</button>
  {/if}
{/each}
