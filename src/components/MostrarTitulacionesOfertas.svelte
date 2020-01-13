<script>
  export let ofertas;
  export let periodo;
  export let asignatura;
  export let titulaciones;
  export let asignaciones;

  import EliminarOferta from "./EliminarOferta.svelte";

  let oferta = ofertas.find(
    element =>
      element.asignatura === asignatura &&
      element.periodo_academico === periodo
  );

  let añadirtitulacion = {
    asignatura: asignatura,
    periodo: periodo,
    titulacion: "",
    plazas_ofertadas: oferta.plazas_ofertadas
  };

  let message;

  function añadiroferta() {
    fetch(`/asignatura/añadiroferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(añadirtitulacion)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nueva oferta guardada";
        }
      });
  }
</script>

<style>
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

<table id="tabla">
    <tr>
      <th>TITULACIONES QUE LA OFERTAN</th>
      <th>ELIMINAR OFERTA</th>
    </tr>
    {#each ofertas as o}
    <tr>
    {#if o.periodo_academico === periodo && o.asignatura === asignatura}
      <td>{o.titulacion_ingles}</td>
      <td><EliminarOferta oferta={o.id_oferta} {asignaciones}/></td>
      {/if}
      </tr>
    {/each}
  </table>
  
  {#if añadirtitulacion.open}
  <div class="request-box">
    <div id="textfield">
      <div id="datos">
        <div id="contenido_datos">
          <p>
            Titulación:
            <select name="titu" bind:value={añadirtitulacion.titulacion}>
              <option value="">Selecciona una titulación...</option>
              {#each titulaciones as t}
                <option value={t.codigo_titulacion}>{t.titulacion_catalan}</option>
              {/each}
            </select>
          </p>
        </div>
      </div>
    </div>
    <div>
      <div id="buttons">
        <div id="field">
          <button on:click={añadiroferta}>Salvar</button>
          <button on:click={() => (añadirtitulacion.open = false)}>
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
      <button on:click={() => (añadirtitulacion.open = true)}>Añadir Titulación</button>
    </div>
  </div>
{/if}