<script>
  export let ofertas;
  export let periodo;
  export let asignatura;
  export let titulaciones;
  export let asignaciones;

  import MostrarTitulacionesOfertas from "./MostrarTitulacionesOfertas.svelte";
  import AñadirOferta from "./AñadirOferta.svelte";
  import ModificarPlazasOferta from "./ModificarPlazasOferta.svelte";

  let oferta = ofertas.find(
    element =>
      element.asignatura === asignatura &&
      element.periodo_academico === periodo.id_periodo
  );

  let { id_periodo } = periodo;

  let message;
</script>

<style>
  #periodo {
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 25%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }
</style>

{#if oferta === null || oferta === undefined}
  <div id="periodo">
    <div>Q{periodo.cuatrimestre}, {periodo.año}</div>
  </div>
  <AñadirOferta {asignatura} {titulaciones} periodo={id_periodo} {ofertas} {asignaciones}/>
{:else}
  <ModificarPlazasOferta {oferta}/>
  <MostrarTitulacionesOfertas
    {oferta}
    {asignatura}
    periodo={id_periodo}
    {titulaciones}
    {asignaciones} />
{/if}
