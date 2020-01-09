<script>
  export let ofertas;
  export let acuerdo;
  export let asignaciones;
  export let asignaturas;

  import MostrarTitulacionesOfertas from "./MostrarTitulacionesOfertas.svelte";
  import AñadirOferta from "./AñadirOferta.svelte";
  import ModificarPlazasOferta from "./ModificarPlazasOferta.svelte";
  import AñadirAsignacion from "./AñadirAsignacion.svelte";
  import ModificarEstadoAsignacion from "./ModificarEstadoAsignacion.svelte";
  import SolicitarAsignatura from "./SolicitarAsignatura.svelte";
  import OfertasExistentes from "./OfertasExistentes.svelte"
  import OfertasRecomendadas from "./OfertasRecomendadas.svelte"
  import OfertasSolicitadas from "./OfertasSolicitadas.svelte";

  let { id_periodo } = periodo;
  let { id_acuerdo } = acuerdo;

  let message;
</script>

<style>
</style>

<OfertasSolicitadas {asignaturas} {acuerdo}/>

<OfertasRecomendadas {ofertas} {acuerdo}/>

<OfertasExistentes {ofertas} {acuerdo}/>

