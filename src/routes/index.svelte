<script context="module">
  export function preload({ params, query }) {
    return this.fetch(`estudiantes.json`)
      .then(body => body.json())
      .then(json => {
        return { estudiantes: json };
      });
  }
</script>

<script>

  export let estudiantes;

  let filtro = "";

  $: estudiantesFiltrados = estudiantes.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.nombre, filtro) ||
	    strIn(e.apellidos, filtro) ||
	    strIn(e.universidad, filtro) ||
	    strIn(e.pais, filtro)
    );
  });

  let nuevoestudiante = {
    open: false,
    email: "",
    apellidos: "",
    nombre: "",
    universidad: ""
  };

  let nuevoacuerdo = {
    estudiante: "",
    titulacion: "",
    periodo_academico: "",
    estado: ""
  };

  let message;

  function añadirestudiante() {
    fetch(`nuevoestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevoestudiante)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevoestudiante saved";
        }
      });
  }

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

  function añadirambos() {
    añadirestudiante();
    añadiracuerdo();
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

  #contenido {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 40px;
    width: 200px;
    font-weight: 650;
    background-color: rgb(233, 158, 97);
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
  <div id="title">ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="options">
  <div id="data">
    <a href="/asignaturas/">ASIGNATURAS</a>
  </div>
</div>

<div id="contenido">ESTUDIANTES</div>

<div id="filtro">
  <p>BUSCADOR: <input type="text" bind:value={filtro} placeholder="Introduce la palabra clave" title="Type in a name" /></p>
</div>

{#if nuevoestudiante.open}
  <div class="request-box">
    <div id="textfield">
      <div id="field">
        <p>
          email:
          <input type="text" bind:value={nuevoestudiante.email} />
        </p>
        <p />
        <p>
          apellidos:
          <input type="text" bind:value={nuevoestudiante.apellidos} />
        </p>
        <p>
          nombre:
          <input type="text" bind:value={nuevoestudiante.nombre} />
        </p>
        <p>
          universidad:
          <input type="text" bind:value={nuevoestudiante.universidad} />
        </p>
        <p>
          titulacion:
          <input type="text" bind:value={nuevoacuerdo.titulacion} />
        </p>
        <p>
          periodo academico:
          <input type="text" bind:value={nuevoacuerdo.periodo_academico} />
        </p>
        <p>
          estado:
          <input type="text" bind:value={nuevoacuerdo.estado} />
        </p>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={añadirambos}>Salvar</button>
          <button on:click={() => (nuevoestudiante.open = false)}>
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
      <button on:click={() => (nuevoestudiante.open = true)}>Añadir</button>
    </div>
  </div>
{/if}

<table id="tabla">
  <tr>
    <th>APELLIDOS</th>
    <th>NOMBRE</th>
    <th>UNIVERSIDAD</th>
	<th>PAÍS</th>
    <th>EMAIL</th>
  </tr>
  {#each estudiantesFiltrados as e}
    <tr>
      <td><a href="/estudiante/{e.email}">{e.apellidos}</a></td>
      <td>{e.nombre}</td>
      <td>{e.universidad}</td>
	    <td>{e.pais}</td>
      <td>{e.email}</td>
    </tr>
  {/each}
</table>
