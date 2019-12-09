<script context="module">
  export async function preload({ params, query }) {
    let fetch_endpoints = [
      this.fetch(`estudiantes.json`).then(body => body.json()),
      this.fetch(`universidades.json`).then(body => body.json()),
      this.fetch(`titulaciones.json`).then(body => body.json()),
      this.fetch(`periodos.json`).then(body => body.json())
    ];
    let [
      { estudiantes },
      { universidades },
      { titulaciones },
      { periodos }
    ] = await Promise.all(fetch_endpoints);
    return {
      estudiantes,
      universidades,
      titulaciones,
      periodos
    };
  }
</script>

<script>
  import Buscador from "../components/Buscador.svelte";

  export let estudiantes;
  export let universidades;
  export let titulaciones;
  export let periodos;
  
  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado`];

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

  #datos {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 180px;
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
    width: 600px;
    font-weight: 650;
    background-color: rgb(230, 245, 255);
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
  <div id="title">ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="options">
  <div id="data">
    <a href="/asignaturas/">ASIGNATURAS</a>
    <a href="/titulaciones/">TITULACIONES</a>
  </div>
</div>

<div id="contenido">ESTUDIANTES</div>

<Buscador tabla="estudiantes" estudiantes = {estudiantes}/>

{#if nuevoestudiante.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Apellidos:
            <input type="text" bind:value={nuevoestudiante.apellidos} />
            <br />
            Nombre:
            <input type="text" bind:value={nuevoestudiante.nombre} />
            <br />
            Universidad:
            <select name="uni" bind:value={nuevoestudiante.universidad}>
              <option value="">Selecciona una universidad...</option>
              {#each universidades as u}
                <option value={u.codigo_universidad}>{u.universidad}</option>
              {/each}
            </select>
            <br />
            Titulación:
            <select name="titu" bind:value={nuevoacuerdo.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.nombre_catalan}</option>
              {/each}
            </select>
            <br />
            Email:
            <input type="text" bind:value={nuevoestudiante.email} />
            <br />
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