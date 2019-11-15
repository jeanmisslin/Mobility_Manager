<script context="module">
	export function preload({ params, query }) {
        const id = params.id;
    return this.fetch(`/estudiante/${id}.json`)
			.then(body => body.json())
			.then(json => json)
	}
</script>

<script>

    export let estudiante;
    export let apellidos;
    export let nombre;
    export let universidad;
    export let codigo_universidad;
    export let pais;
    export let email;
    export let titulacion;
    export let id_acuerdo;
    export let acuerdos;
    export let asignaturas;

    let modificaestudiante = {
    open: false,
    estudiante: email,
    email: email,
    apellidos: apellidos,
    nombre: nombre,
    universidad: codigo_universidad
  };

  let message;

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

  #acuerdo {
    display: flex;
    font-weight: 650;
    font-size: 13pt;
    color: black;
    text-transform: uppercase;
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
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 150px;
    width: 300px;
    font-weight: 650;
    background-color: rgb(117, 182, 226);
    color: black;
    border: 1px solid black;
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
    background-color: rgb(229, 186, 151);
  }
</style>

<svelte:head>
  <title>ESEIAAT INCOMING STUDENTS</title>
</svelte:head>

<div id="cabecera">
  <div id="title">{apellidos}, {nombre}</div>
</div>

<div id="options">
    <div id="data"><a href="../">ESTUDIANTES</a>  <a href="/asignaturas/">ASIGNATURAS</a></div>
</div>

<div id="contenido">DATOS PERSONALES</div>



{#if modificaestudiante.open}
  <div class="request-box">
    <div id="textfield">
      <div id="field">
        <p>
          email:
          <input type="text" bind:value={modificaestudiante.email}/>
        </p>
        <p />
        <p>
          apellidos:
          <input type="text" bind:value={modificaestudiante.apellidos}/>
        </p>
        <p>
          nombre:
          <input type="text" bind:value={modificaestudiante.nombre}/>
        </p>
        <p>
          universidad:
          <input type="text" bind:value={modificaestudiante.universidad}/>
        </p>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={modificarestudiante}>Salvar</button>
          <button on:click={() => modificaestudiante.open = false}>Cancelar</button>
        </div>
      </div>
    </div>
    {#if message}
      <p>{message}</p>
    {/if}
  </div>
{:else}
<div id="datos">
  <p>Apellidos: {apellidos}<br>Nombre: {nombre}<br>
    Universidad: {universidad}<br>País: {pais}<br>Email: {email}</p>
</div>
  <div id="buttons">
    <div id="field">
      <button on:click={() => modificaestudiante.open = true}>Modificar</button>
    </div>
  </div>
{/if}

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

{#each acuerdos as a}
  <table id="tabla">
  <tr>
    <th>AÑO</th>
    <th>CUATRIMESTRE</th>
    <th>TITULACIÓN</th>
    <th>ESTADO</th>
  </tr>
  <tr>
      <td>{a.año}-{a.año+1}</td>
      <td>{a.cuatrimestre}</td>
      <td>{a.nombre_castellano}</td>
      <td>{a.estado}</td>
    </tr>
  </table>

<div id="options">
    <div id="data">ASIGNATURAS SOLICITADAS</div>
</div>

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
{/each}