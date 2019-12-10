<script>
  import TablaOcultableAsignaturas from "./TablaOcultableAsignaturas.svelte";
  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";

  export let asignaturas;
  export let acuerdo;
  export let titulaciones;
  export let periodos;
</script>

<ModificaAcuerdo {periodos} {acuerdo} {titulaciones} />
<br>

<TablaOcultableAsignaturas
  {asignaturas}
  button_text="Mostrar Todas las Asignaturas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'concedida')}
  button_text="Mostrar Concedidas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'eliminada')}
  button_text="Mostrar Eliminadas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'denegada')}
  button_text="Mostrar Denegadas" />

<TablaOcultableAsignaturas
  asignaturas={asignaturas.filter(s => s.estado_solicitud === 'descartada')}
  button_text="Mostrar Descartadas" />
