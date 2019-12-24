<script>
  import AñadirAsignatura from "./AñadirAsignatura.svelte";
  export let oferta;
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
  } = oferta;

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
    height: 60px;
    width: 100%;
    font-weight: 400;
  }

  #codigo_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 55px;
    width: 60px;
    border: 1px solid black;
  }

  #titulo_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 55px;
    width: 450px;
    border: 1px solid black;
  }

  #idioma_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 55px;
    width: 80px;
    border: 1px solid black;
  }

  #ects_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 55px;
    width: 40px;
    border: 1px solid black;
  }

  #disponibles {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    height: 55px;
    width: 60px;
    border: 1px solid black;
  }

  #añadir_oferta {
    display: flex;
    align-items: center;
    justify-content: center;
    margin-left: 3px;
    height: 55px;
    width: 180px;
    border: 1px solid black;
  }
</style>

<div id="datos_oferta">
  <div id="codigo_oferta">CODIGO<br>{oferta.codigo_asignatura}</div>
  <div id="titulo_oferta">TÍTULO<br>{oferta.nombre_ingles}</div>
  <div id="idioma_oferta">IDIOMA<br>{oferta.idioma}</div>
  <div id="ects_oferta">ECTS<br>{oferta.ects}</div>
  <div id="disponibles">PLAZAS<br>{oferta.plazas_disponibles}</div>
  <div id="añadir_oferta">
    <AñadirAsignatura oferta={id_oferta} acuerdo={id_acuerdo} />
  </div>
</div>

