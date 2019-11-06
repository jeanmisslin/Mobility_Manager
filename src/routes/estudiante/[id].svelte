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
    export let pais;
    export let email;
    export let titulacion;
    export let acuerdos;

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
    <div id="data"><a href="../">ESTUDIANTES</a></div>
</div>

<div id="contenido">DATOS PERSONALES</div>

<div id="datos">
  <p>Apellidos: {apellidos}<br>Nombre: {nombre}<br>
    Universidad: {universidad}<br>País: {pais}<br>Email: {email}</p>
</div>

<div id="acuerdos">ACUERDOS ACADEMICOS</div>

<table id="tabla">
  <tr>
    <th>AÑO</th>
    <th>CUATRIMESTRE</th>
    <th>TITULACIÓN</th>
  </tr>
  {#each acuerdos as a}
    <tr>
      <td>{a.año}-{a.año+1}</td>
      <td>{a.cuatrimestre}</td>
      <td>{a.nombre_castellano}</td>
    </tr>
  {/each}
</table>



