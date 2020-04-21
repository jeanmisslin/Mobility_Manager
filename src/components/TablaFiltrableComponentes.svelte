<script>
  export let campos; // campos que se miran al filtrar
  export let tabla; // Array de objetos javascript con todos los datos
  export let componente;
  export let acuerdo;
  export let active;
  export let seleccion;
  export let onSolicitada;

  import SolicitarAsignaturaForm from "./SolicitarAsignaturaForm.svelte";
  import ModificarEstadoAsignacionForm from "./ModificarEstadoAsignacionForm.svelte";
  import Textfield from "@smui/textfield";

  let filtro = "";

  // TODO: Comprobar que todos los objetos tienen los mismos campos
  //       (De momentos asumimos que no)

  const strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;

  $: tablaFiltrada = tabla.filter(obj => {
    for (let c of campos) {
      if (!(c.name in obj)) {
        console.error(`${c.name} no está en ${JSON.stringify(obj)}`);
      }
      if (c.nombre) {
        {
          c.nombre.toUpperCase();
        }
      }
      if (c.filter) {
        if (strIn(obj[c.name], filtro)) return true;
      }
    }
    return false;
  });
</script>

<style>
  #tabla {
    border-collapse: collapse;
    width: 100%;
    margin-bottom: 20px;
    margin-top: 0px;
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
    background-color: white;
    color: black;
  }

  tr:nth-child(even) {
    background-color: white;
  }

  #buscador {
    margin-top: 0px;
    margin-bottom: 15px;
  }
</style>

<div id="buscador">
  <Textfield label="Buscador" style="width: 100%" bind:value={filtro} />
</div>

<table id="tabla">
  <tr>
    {#each campos as c}
      {#if c.show}
        <th>
          {#if c.nombre}
            {c.nombre.toUpperCase()}
          {:else}{c.name.toUpperCase()}{/if}
        </th>
      {/if}
    {/each}
    {#if componente === 'solicitar'}
      <th>SOLICITAR</th>
    {:else if componente === 'modificar'}
      <th>MODIFICAR</th>
    {/if}
  </tr>
    {#each tablaFiltrada as obj}
      <tr>
        {#each campos as c}
          {#if c.show}
            <td>
              {#if c.render}
                {@html c.render(obj)}
              {:else}{obj[c.name]}{/if}
            </td>
          {/if}
        {/each}
        {#if componente === 'solicitar'}
          <td>
            <SolicitarAsignaturaForm
              acuerdo={acuerdo.id_acuerdo}
              oferta={obj}
              {active}
              {seleccion} 
              onSolicitada={onSolicitada}
              />
          </td>
        {:else if componente === 'modificar'}
          <td>
            <ModificarEstadoAsignacionForm asignatura={obj} {acuerdo} />
          </td>
        {/if}
      </tr>
    {/each}
</table>
