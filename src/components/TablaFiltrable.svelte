<script>
  export let campos; // campos que se miran al filtrar
  export let tabla; // Array de objetos javascript con todos los datos

  import Textfield from "@smui/textfield";
  import Icon from "@smui/textfield/icon/index";
  import { Icon as CommonIcon } from "@smui/common";
  import IoIosSearch from "svelte-icons/io/IoIosSearch.svelte";

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
    margin-bottom: 0px;
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
    background-color: rgb(117, 182, 226);
    color: black;
  }

  tr:nth-child(even) {
    background-color: rgb(255, 246, 239);
  }

  #separacion {
    width: 100%;
    height: 10px;
  }
</style>

<div id="separacion" />


  <div id="filtro">
    <p>
      BUSCADOR:
      <input
        type="text"
        bind:value={filtro}
        placeholder="Introduce la palabra clave"
        title="Type in a name" />
    </p>
  </div>

<div id="separacion" />

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
    </tr>
  {/each}
</table>
