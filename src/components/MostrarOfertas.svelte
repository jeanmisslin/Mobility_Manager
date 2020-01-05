<script>
  import MostrarOferta from "./MostrarOferta.svelte";
  import MostrarOfertaTitulacion from "./MostrarOfertaTitulacion.svelte";
  export let ofertas;
  export let acuerdo;

  let filtro = "";

  $: ofertasFiltradas = ofertas.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.asignatura, filtro) ||
      strIn(e.nombre_catalan, filtro) ||
      strIn(e.nombre_castellano, filtro) ||
      strIn(e.nombre_ingles, filtro) ||
      strIn(e.titulacion_catalan, filtro) ||
      strIn(e.titulacion_castellano, filtro) ||
      strIn(e.titulacion_ingles, filtro) ||
      strIn(e.idioma, filtro)
    );
  });
</script>

<style>
  #datos_oferta {
    display: flex;
    align-items: center;
    justify-content: flex-start;
    margin-top: 3px;
    height: 30px;
    width: 100%;
    border: 1px solid black;
    background-color: rgb(109, 168, 216);
  }

  #codigo_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 60px;
  }

  #titulo_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 250px;
  }

  #titulacion {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 245px;
  }

  #idioma_oferta {
    display: flex;
    justify-content: center;
    text-align: center;
    align-items: center;
    margin-left: 3px;
    font-weight: 650;
    height: 55px;
    width: 90px;
  }

  #ects_oferta {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 5px;
    font-weight: 650;
    height: 55px;
    width: 50px;
  }

  #disponibles {
    display: flex;
    text-align: center;
    align-items: center;
    margin-left: 8px;
    font-weight: 650;
    height: 55px;
    width: 55px;
  }

  #recomendadas {
    display: flex;
    align-items: center;
    justify-content: space-around;
    margin-top: 25px;
    margin-bottom: 10px;
    height: 30px;
    width: 100%;
    font-weight: 650;
    background-color: rgb(240, 204, 175);
    color: black;
    border: 1px solid black;
  }
</style>

<div id="recomendadas">
  <div>TODAS LAS ASIGNATURAS</div>
  <div id="filtro">
    <p>
      BUSCADOR:
      <input
        type="text"
        bind:value={filtro}
        placeholder="Introduce la palabra clave"
        title="Type in a name" />
    </p>
  </div>
</div>

<div id="datos_oferta">
  <div id="codigo_oferta">CODIGO</div>
  <div id="titulo_oferta">TÍTULO</div>
  <div id="titulacion">TITULACIÓN</div>
  <div id="idioma_oferta">IDIOMA</div>
  <div id="ects_oferta">ECTS</div>
  <div id="disponibles">PLAZAS</div>
</div>

{#each ofertasFiltradas as o}
  <MostrarOfertaTitulacion oferta={o} {acuerdo} />
{/each}
