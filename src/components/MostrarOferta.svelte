<script>
  export let ofertas;
  export let asignatura;
  export let titulaciones;
  export let periodos;
  export let seleccion;
  export let onModificado;

  import MostrarTitulacionesOferta from "./MostrarTitulacionesOferta.svelte";
  import NuevaOferta from "./NuevaOferta.svelte";
  import MostrarPlazasOferta from "./MostrarPlazasOferta.svelte";

  function encontrarperiodo(seleccion, periodos) {
    let periodoA = seleccion.split("-");
    let periodoQ = seleccion.split("Q");
    let año = periodoA[0];
    let cuatrimestre = periodoQ[1];
    let periodo = periodos.find(
      element =>
        (element.año === parseInt(año)) &
        (element.cuatrimestre === parseInt(cuatrimestre))
    );
    return periodo;
  }

  $: periodo = encontrarperiodo(seleccion, periodos);

</script>

<style>
  #contenedor {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    margin-top: 20px;
    width: 100%;
    height: 400px;
    border: 1px solid black;
  }

  #boton {
    display: flex;
    flex-direction: row;
    align-items: center;
    justify-content: center;
    width: 50%;
    height: 40px;
  }
</style>

{#if ofertas.find(element => element.asignatura === asignatura.id_asignatura && element.periodo_academico === periodo.id_periodo) === null || ofertas.find(element => element.asignatura === asignatura.id_asignatura && element.periodo_academico === periodo.id_periodo) === undefined}
  <div id="contenedor">
  <div id="boton">
    <NuevaOferta
      asignatura={asignatura.id_asignatura}
      {titulaciones}
      periodo={periodo.id_periodo} />
  </div>
  </div>
{:else}
  <MostrarPlazasOferta
    oferta={ofertas.find(element => element.asignatura === asignatura.id_asignatura && element.periodo_academico === periodo.id_periodo)} />
  <MostrarTitulacionesOferta
    oferta={ofertas.find(element => element.asignatura === asignatura.id_asignatura && element.periodo_academico === periodo.id_periodo)}
    {periodo}
    {onModificado}
    {titulaciones} />
{/if}
