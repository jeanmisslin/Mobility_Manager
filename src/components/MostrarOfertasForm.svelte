<script>
  export let ofertas;
  export let asignatura;
  export let titulaciones;
  export let periodos;
  export let seleccion;

  import MostrarTitulacionesOfertas from "./MostrarTitulacionesOfertas.svelte";
  import AñadirOferta from "./AñadirOferta.svelte";
  import MostrarPlazasOferta from "./MostrarPlazasOferta.svelte";

  let message;

  function periodo(seleccion, periodos) {
    let periodoA = seleccion.split("-");
    let periodoQ = seleccion.split("Q");
    let año = periodoA[0];
    let cuatrimestre = periodoQ[1];
    let id_periodo = periodos.find(
      element =>
        (element.año === parseInt(año)) &
        (element.cuatrimestre === parseInt(cuatrimestre))
    );
    return id_periodo;
  }

  let id_periodo;

  $: id_periodo = periodo(seleccion, periodos);
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

{#if ofertas.find(element => element.asignatura === asignatura.codigo_asignatura && element.periodo_academico === id_periodo.id_periodo) === null || ofertas.find(element => element.asignatura === asignatura.codigo_asignatura && element.periodo_academico === id_periodo.id_periodo) === undefined}
  <div id="contenedor">
  <div id="boton">
    <AñadirOferta
      asignatura={asignatura.codigo_asignatura}
      {titulaciones}
      periodo={id_periodo.id_periodo} />
  </div>
  </div>
{:else}
  <MostrarPlazasOferta
    oferta={ofertas.find(element => element.asignatura === asignatura.codigo_asignatura && element.periodo_academico === id_periodo.id_periodo)} />
  <MostrarTitulacionesOfertas
    oferta={ofertas.find(element => element.asignatura === asignatura.codigo_asignatura && element.periodo_academico === id_periodo.id_periodo)}
    periodo={id_periodo}
    {titulaciones} />
{/if}
