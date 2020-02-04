
<script context="module">
	
	export function preload({ params, query }) {
		return this.fetch(`periodos.json`)
			.then(body => body.json())
			.then(json => {
				return { periodos: json }
			})
    }

</script>

<script>
    let periodos;
    
    let nuevopais = {
        open: false,
        pais: ''
    }

    let message;

    function añadirpais() {
        fetch(`nuevopais.json`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(nuevopais)
        })
        .then(body => body.json())
        .then(json => {
            if (json.error) {
                message = json.error;
            } else {
                message = 'nuevopais saved';
            }
        })
    }

</script>

<style>

	#cabecera {
		display: flex;
		align-items: center;
		justify-content: center;
        height: 50px;
		width: 100%;
    	background-color: rgb(117, 182, 226);
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
		height: 25px;
		width: 200px;
		background-color:rgb(233, 158, 97);
		color: black;
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

    #buttons {
        margin-top: 15px;
        flex-direction: row;
    }

</style>

<svelte:head>
	<title>My App</title>
</svelte:head>

<div id="cabecera">
	<div id="title"> ESEIAAT INCOMING STUDENTS</div>
</div>

<div id="contenido"> MENÚ</div>

<div id="options">
    <div id="data"><a href="/administracion/">Administración</a></div>
</div>

<div id="options">
    <div id="data"><a href="/asignaturas/">Asignaturas</a></div>
</div>

<div id="options">
    <div id="data"><a href="/estudiantes/">Estudiantes</a></div>
</div>

<div id="options">
    <div id="data"><a href="/periodos/">Periodos Académicos</a></div>
</div>

<div id="contenido"> PAISES</div>

{#if nuevopais.open}
    <div class="request-box">
        <div id="textfield">
            <div id="field">
                <p>Pais: <input type="text" bind:value={nuevopais.pais} /></p>
            </div>
        </div>
        <div>
            <div id="buttons">
                <div id="field">
                    <button on:click={añadirpais}>Salvar</button>
                    <button on:click={() => nuevopais.open = false}>Cancelar</button>
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
            <button on:click={() => nuevopais.open = true}>Añadir</button>
        </div>
    </div>
{/if}
