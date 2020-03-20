<script>
  export let tabla;
  export let acuerdo;

  import SolicitarAsignatura from "./SolicitarAsignatura.svelte";
  import ModificarEstadoAsignacion from "./ModificarEstadoAsignacion.svelte";
  import Textfield from "@smui/textfield";
  import DataTable, { Head, Body, Row, Cell } from "@smui/data-table";
</script>

<style>
  #green {
    border: 1px solid black;
    background-color: rgb(227, 255, 227);
    text-align: center;
    padding: 3px;
  }

  #yellow {
    border: 1px solid black;
    background-color: rgb(255, 255, 188);
    text-align: center;
    padding: 3px;
  }

  #red {
    border: 1px solid black;
    background-color: rgb(253, 227, 227);
    text-align: center;
    padding: 3px;
  }
</style>

<div>
  <DataTable table$aria-label="People list">
    <Head>
      <Row>
        <Cell>Código</Cell>
        <Cell>Título</Cell>
        <Cell>Plazas</Cell>
        <Cell>Estado</Cell>
        <Cell>Modificar</Cell>
      </Row>
    </Head>
    <Body>
      {#each tabla as obj}
        <Row>
          <Cell id="red"><a href="/asignatura/{obj.codigo_asignatura}">{obj.codigo_asignatura}</a></Cell>

          <Cell id="red">{obj.nombre_ingles}</Cell>

          <Cell id="red">{obj.plazas_disponibles}</Cell>

          <Cell id="red">{obj.estado_solicitud}</Cell>

          <Cell id="red">
            <ModificarEstadoAsignacion asignatura={obj} {acuerdo} />
          </Cell>
        </Row>
      {/each}
    </Body>
  </DataTable>
</div>
