<script>
  export let estudiante;
  export let universidades;

  import ModificaEstudianteForm from "./ModificaEstudianteForm.svelte";
</script>

<style>
  #contenedor {
    display: flex;
    flex-direction: column;
    width: 100%;
    height: 300px;
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
    <label>Apellidos</label>
    <data>{estudiante.apellidos}</data>
  </div>
  <div id="campos">
    <label>Nombre</label>
    <data>{estudiante.nombre}</data>
  </div>
  <div id="campos">
    <label>Email</label>
    <data>{estudiante.email}</data>
  </div>
  <div id="campos">
    <label>Universidad</label>
    <data>{estudiante.universidad}</data>
  </div>
  <div id="campos">
    <label>País</label>
    <data>{estudiante.pais}</data>
  </div>
</div>

<ModificaEstudianteForm {estudiante} {universidades} />
