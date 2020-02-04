
<script context="module">
	
	export function preload({ params, query }) {
        const id = params.id;
		return this.fetch(`/busqueda_pa/${id}.json`)
			.then(body => body.json())
			.then(json => json)
	}

</script>

<script>

    let id_periodo;
    let año;
    let cuatrimestre;
    export let periodos;
    
    let nuevoperiodo = {
        open: false,
        año: '',
        cuatrimestre: ''
    }

    let busqueda = {
        open: false,
        año:''
    }

    let message;

    function añadirperiodo() {
        fetch(`nuevoperiodo.json`, {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(nuevoperiodo)
        })
        .then(body => body.json())
        .then(json => {
            if (json.error) {
                message = json.error;
            } else {
                message = 'nuevoperiodo saved';
            }
        })
    }

    function buscarperiodo(){
        fetch(`periodosbuscados.json`, {
            method: 'GET',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify(busqueda)
        })
        .then(body => body.json())
        .then(json => {
            if (json.error) {
                message = json.error;
            } else {
                message = 'periodo encontrado';
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
    <div id="data"><a href="/students/">Students Nominated</a></div>
    <div id="data"><a href="/subjects/">Subjects</a></div>
</div>

<div id="contenido"> PERIODOS ACADEMICOS</div>

{#if busqueda.open}
    <div class="request-box">
        <div id="textfield">
            <div id="field">
                <p>Año: <input type="text" bind:value={busqueda.año} /> <button on:click={buscarperiodo}>Buscar</button>
                    <button on:click={() => busqueda.open = false}>Cancelar</button></p>
            </div>
        </div>
        {#if message}
            <p>{message}</p>
        {/if}
    </div>
{:else}
    <div id="buttons">
        <div id="field">
            <button on:click={() => busqueda.open = true}>Buscador</button>
        </div>
    </div>
{/if}

{#each periodos as p}
<div id="options">
	<div id="data">
		<p><a href="/periodo/{p.id_periodo}"> {p.año}-{p.año+1} Q{p.cuatrimestre}</a></p>
	</div>
</div>
{/each}

{#if nuevoperiodo.open}
    <div class="request-box">
        <div id="textfield">
            <div id="field">
                <p>Año: <input type="text" bind:value={nuevoperiodo.año} /> Cuatrimestre: <input type="text" bind:value={nuevoperiodo.cuatrimestre} /></p>
            </div>
        </div>
        <div>
            <div id="buttons">
                <div id="field">
                    <button on:click={añadirperiodo}>Salvar</button>
                    <button on:click={() => nuevoperiodo.open = false}>Cancelar</button>
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
            <button on:click={() => nuevoperiodo.open = true}>Añadir</button>
        </div>
    </div>
{/if}
