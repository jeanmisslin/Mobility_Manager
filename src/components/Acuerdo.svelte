<script>
  import TablaOcultableAsignaturas from "./TablaOcultableAsignaturas.svelte";
  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import TablaFiltrable from "./TablaFiltrable.svelte";
  import MostrarOferta from "./MostrarOferta.svelte";
  import MostrarAsignacion from "./MostrarAsignacion.svelte";
  import MostrarOfertas from "./MostrarOfertas.svelte";
  import MostrarOfertasEstudiante from "./MostrarOfertasEstudiante.svelte"

  export let asignaturas;
  export let acuerdo;
  export let titulaciones;
  export let ofertas;
  export let periodos;
  export let asignaciones;
</script>

<style>
</style>

<ModificaAcuerdo {periodos} {acuerdo} {titulaciones} />

<MostrarOfertasEstudiante {ofertas} {acuerdo} {asignaciones} {asignaturas}/>