<script>
  export let universidad;

  import ModificaUniversidad from "./ModificaUniversidad.svelte";

  function modificarUniversidadEnCaliente(uni) {
    universidad.codigo_universidad = uni.codigo_universidad;
    universidad.nombre_universidad = uni.nombre_universidad;
    universidad.pais = uni.pais;
  }
</script>

<style>
  #contenedor {
    display: flex;
    flex-direction: column;
    margin-top: 20px;
    width: 100%;
    height: 180px;
  }

  #campos {
    display: flex;
    flex-direction: column;
    text-align: start;
    margin-top: 6px;
    margin-left: 2px;
    width: 100%;
    height: 47px;
    border-bottom-style: solid;
    border-bottom-color: grey;
  }

  label {
    color: grey;
    font-size: 12px;
  }

  data {
    color: black;
    font-size: 15px;
  }
</style>

<div id="contenedor">
  <div id="campos">
    <label>Código</label>
    <data>{universidad.codigo_universidad}</data>
  </div>
  <div id="campos">
    <label>Nombre</label>
    <data>{universidad.nombre_universidad}</data>
  </div>
  <div id="campos">
    <label>País</label>
    <data>{universidad.pais}</data>
  </div>
</div>

<ModificaUniversidad {universidad} onModificado={modificarUniversidadEnCaliente} />
