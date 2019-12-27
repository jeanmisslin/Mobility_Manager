<script>
  import ModificarEstadoAsignacion from "./ModificarEstadoAsignacion.svelte";
  export let asignatura;
  export let acuerdo;

  let {
    id_oferta,
    codigo_asignatura,
    nombre_catalan,
    nombre_castellano,
    nombre_ingles,
    idioma,
    ects,
    plan_de_estudios_catalan,
    plan_de_estudios_castellano,
    plan_de_estudios_ingles
  } = asignatura;

  let {
    id_acuerdo
  } = acuerdo;
</script>

<style>
  #datos_oferta {
    display: flex;
    align-items: flex-start;
    justify-content: space-between;
    margin-top: 3px;
    height: 25px;
    width: 100%;
    font-weight: 400;
  }

  #codigo_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    justify-content: center;
    margin-left: 3px;
    height: 25px;
    width: 60px;
    font-weight: 500;
    border: 1px solid black;
    background-color: rgb(247, 252, 255);
  }

  #titulo_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 25px;
    width: 355px;
    font-weight: 500;
    border: 1px solid black;
    background-color: rgb(247, 252, 255);
  }

  #idioma_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 25px;
    width: 80px;
    font-weight: 500;
    border: 1px solid black;
    background-color: rgb(247, 252, 255);
  }

  #ects_oferta {
    display: flex;
    text-align: right;
    align-items: center;
    justify-content: center;
    margin-left: 3px;
    height: 25px;
    width: 40px;
    font-weight: 500;
    border: 1px solid black;
    background-color: rgb(247, 252, 255);
  }

  #estado {
    display: flex;
    text-align: right;
    align-items: center;
    justify-content: center;
    margin-left: 3px;
    height: 25px;
    width: 90px;
    font-weight: 500;
    border: 1px solid black;
    background-color: rgb(247, 252, 255);
  }

  #añadir_oferta {
    display: flex;
    align-items: center;
    justify-content: left;
    margin-left: 3px;
    height: 25px;
    width: 180px;
  }
</style>

<div id="datos_oferta">
  <div id="codigo_oferta">{asignatura.codigo_asignatura}</div>
  <div id="titulo_oferta">{asignatura.nombre_ingles}</div>
  <div id="idioma_oferta">{asignatura.idioma}</div>
  <div id="ects_oferta">{asignatura.ects}</div>
  <div id="estado">{asignatura.estado_solicitud}</div>
  <div id="añadir_oferta">
    <ModificarEstadoAsignacion {asignatura} acuerdo={id_acuerdo} />
  </div>
</div>

