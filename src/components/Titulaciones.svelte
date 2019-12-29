<script>
  import Titulacion from "./Titulacion.svelte";

  export let ofertas;
  export let titulaciones;

  let { codigo_titulacion, titulacion_ingles } = titulaciones;
</script>

{#each titulaciones as T}
  <Titulacion {ofertas} {titulaciones} codigo={T.codigo_titulacion}/>
{/each}
