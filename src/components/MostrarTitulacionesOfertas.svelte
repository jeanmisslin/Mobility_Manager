<script>
  export let oferta;
  export let periodo;
  export let asignatura;
  export let titulaciones;
  export let asignaciones;

  import EliminarTitulacionOferta from "./EliminarTitulacionOferta.svelte";
  import AñadirTitulacionOferta from "./AñadirTitulacionOferta.svelte";

  let array = oferta.titulacion.split(",");
  let titulacion;

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
  {#each array as a}
    {#each titulaciones as t}
      {#if t.codigo_titulacion === a}
        <tr>
          <td>{t.titulacion_ingles}</td>
          <td>
            <EliminarTitulacionOferta {oferta} elimina={a} />
          </td>
        </tr>
      {/if}
    {/each}
  {/each}
</table>

<AñadirTitulacionOferta {titulaciones} {oferta} />