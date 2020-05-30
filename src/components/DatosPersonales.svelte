<script>
  export let estudiante;
  export let universidades;
  export let estudiantes;

  import ModificaEstudiante from "./ModificaEstudiante.svelte";

  function modificarEstudianteEnCaliente(apellidos, nombre, email, id_universidad, nombre_universidad, pais) {
    estudiante.apellidos = apellidos;
    estudiante.nombre = nombre;
    estudiante.email = email;
    estudiante.universidad = id_universidad;
    estudiante.nombre_universidad = nombre_universidad; 
    estudiante.pais = pais;
    }

</script>

<style>
  #contenedor {
    display: flex;
    flex-direction: column;
    margin-top: 20px;
    width: 100%;
    height: 290px;
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
    <data>{estudiante.nombre_universidad}</data>
  </div>
  <div id="campos">
    <label>País</label>
    <data>{estudiante.pais}</data>
  </div>
</div>

<ModificaEstudiante {estudiante} 
                        {universidades} 
                        {estudiantes} 
                        onModificado={modificarEstudianteEnCaliente}/>
