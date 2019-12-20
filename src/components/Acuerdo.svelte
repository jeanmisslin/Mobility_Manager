<script>
  import TablaOcultableAsignaturas from "./TablaOcultableAsignaturas.svelte";
  import ModificaAcuerdo from "./ModificaAcuerdo.svelte";
  import TablaFiltrable from "./TablaFiltrable.svelte";

  export let asignaturas;
  export let acuerdo;
  export let titulaciones;
  export let ofertas;
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

  <TablaFiltrable
  tabla={ofertas.filter(ofer => ofer.plazas_disponibles > 0 && ofer.titulacion === acuerdo.titulacion)}
  campos={[
    { name: 'codigo_asignatura', show: true, filter: true },
    { name: 'nombre_ingles', nombre: 'Título', show: true, filter: true, render: (obj) => `<a href="${obj.plan_de_estudios_ingles}">${obj.nombre_ingles}</a>` },  
    { name: 'idioma', show: true, filter: true }, 
    { name: 'ects', show: true, filter: false }
  ]} />
