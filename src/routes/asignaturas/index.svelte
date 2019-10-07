<script context="module">
	
	export function preload({ params, query }) {
		return this.fetch(`../asignaturas.json`)
			.then(body => body.json())
			.then(json => {
				return { asignaturas: json }
			})
    }

</script>

<script>

    export let asignaturas;
    
    let nuevaasignatura = {
        open: false,
        codigo: '',
		nombre_catalan: '',
		nombre_castellano: '',
		nombre_castellano: '',
		idioma: '',
		ects:'',
		plan_de_estudios_catalan:'',
		plan_de_estudios_castellano:'',
		plan_de_estudios_ingles:''
    }

    let message;

    function añadirasignatura() {
        fetch(`nuevaasignatura.json`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(nuevaasignatura)
        })
        .then(body => body.json())
        .then(json => {
            if (json.error) {
                message = json.error;
            } else {
                message = 'nuevaasignatura saved';
            }
        })
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
        margin-bottom: 17px;
		height: 40px;
		width: 200px;
		font-weight: 650;
		background-color:rgb(233, 158, 97);
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
  		text-align: left;
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
	<div id="title"> ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="options">
    <div id="data"><a href="../">ESTUDIANTES</a></div>
</div>

<div id="contenido"> ASIGNATURAS</div>

{#if nuevaasignatura.open}
    <div class="request-box">
        <div id="textfield">
            <div id="field">
                <p>codigo:		 <input type="text" bind:value={nuevaasignatura.codigo} /><p> 
				<p>nombre_catalan:	 <input type="text" bind:value={nuevaasignatura.nombre_catalan} /></p>
				<p>nombre_castellano:		 <input type="text" bind:value={nuevaasignatura.nombre_castellano} /></p>
				<p>nombre_ingles:	 <input type="text" bind:value={nuevaasignatura.nombre_ingles} /></p>
				<p>idioma:		 <input type="text" bind:value={nuevaasignatura.idioma} /><p>
				<p>ects:		 <input type="text" bind:value={nuevaasignatura.ects} /><p></p>
				<p>plan_de_estudios_catalan:	 <input type="text" bind:value={nuevaasignatura.plan_de_estudios_catalan} /></p>
				<p>plan_de_estudios_castellano:		 <input type="text" bind:value={nuevaasignatura.plan_de_estudios_castellano} /></p>
				<p>plan_de_estudios_ingles:	 <input type="text" bind:value={nuevaasignatura.plan_de_estudios_ingles} /></p>
            </div>
        </div>
        <div>
            <div id="buttons">
                <div id="field">
                    <button on:click={añadirasignatura}>Salvar</button>
                    <button on:click={() => nuevaasignatura.open = false}>Cancelar</button>
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
            <button on:click={() => nuevaasignatura.open = true}>Añadir</button>
        </div>
    </div>
{/if}

<table id="tabla">
  <tr>
    <th>CODIGO</th>
    <th>TÍTULO</th>
    <th>IDIOMA</th>
	<th>ECTS</th>
  </tr>
  {#each asignaturas as a}
  <tr>
	<td><a href="/asignatura/{a.codigo}"> {a.codigo} </a></td>
	<td><a href="{a.plan_de_estudios_ingles}"> {a.nombre_ingles} </a></td>
	<td>{a.idioma}</td>
	<td>{a.ects}</td>
  </tr>
  {/each}
</table>
