<script>
  export let periodos;
  export let acuerdo;
  export let titulaciones;
  export let acuerdos;
  export let asignaturas;
  export let onModificado;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let menuSurface;
  let warning = "El/la estudiante ya dispone de un acuerdo académico para el nuevo periodo seleccionado";
  let estados = [`Nominado/a`, `Matriculado/a`, `Eliminado`];
  let asignaciones = asignaturas.find(element => element.acuerdo_academico === acuerdo.id_acuerdo);
  let filtroTitulaciones = "";
  let filtroPeriodos = "";
  let message;

  $: periodo_anterior = acuerdo.periodo_academico;
  $: nombre_estudio = titulaciones.find(element => element.codigo_titulacion === acuerdo.titulacion);
  $: periodo = periodos.find(element => element.id_periodo === periodo_anterior);
  $: PeriodosFiltrados = periodos.filter(e => e.año === parseInt(filtroPeriodos));
  
  $: modificaacuerdo = {
    id_acuerdo: acuerdo.id_acuerdo,
    estudiante: acuerdo.estudiante,
    titulacion: acuerdo.titulacion,
    periodo_academico: acuerdo.periodo_academico,
    año: periodo.año,
    cuatrimestre: periodo.cuatrimestre,
    nombre_titulacion: nombre_estudio.titulacion_castellano,
    estado: acuerdo.estado
  };

  $: modificaplazas = {
    id_oferta: "",
    plazas_concedidas: "",
    plazas_disponibles: "",
    plazas_solicitadas: ""
  };

  $: TitulacionesFiltradas = titulaciones.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.titulacion_catalan, filtroTitulaciones) ||
      strIn(e.titulacion_castellano, filtroTitulaciones) ||
      strIn(e.titulacion_ingles, filtroTitulaciones)
    );
  });

  function listPeriodos() {}
  function listTitulaciones() {}
  
  function encontrarperiodo(id) {
    let periodo = periodos.find(per => per.id_periodo === id);
    return periodo;
  }

  function existe(a) {
    let introducido = acuerdos.find(
      acu => acu.periodo_academico === parseInt(a)
    );
    return introducido;
  }

  function modificaracuerdo() {
    fetch(`modificaacuerdo.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaacuerdo)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
        onModificado(
          acuerdo.id_acuerdo,
          modificaacuerdo.nombre_titulacion,
          encontrarperiodo(modificaacuerdo.periodo_academico),
          acuerdo.estado
        );
        periodo_anterior = modificaacuerdo.periodo_academico;
        acuerdo.periodo_academico = modificaacuerdo.periodo_academico;
      });
  }

  function eliminarAsignaciones() {
    fetch(`eliminaasignacion.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaacuerdo)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
      });
  }

  function eliminarplazaconcedida() {
    fetch(`eliminaplazaconcedida.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaplazas)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "oferta guardada";
        }
      });
  }

  function eliminarplazasolicitada() {
    fetch(`eliminaplazasolicitada.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaplazas)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "oferta guardada";
        }
      });
  }

  function actualizarPlazas() {
    for (let i = 0; i < asignaciones.length; i++) {
      modificaplazas.id_oferta = asignaciones[i].id_oferta;
      modificaplazas.plazas_concedidas = asignaciones[i].plazas_concedidas;
      modificaplazas.plazas_solicitadas = asignaciones[i].plazas_solicitadas;
      modificaplazas.plazas_disponibles = asignaciones[i].plazas_disponibles;
      if (asignaciones[i].estado_solicitud === "Concedida") {
        eliminarplazaconcedida();
      } else {
        eliminarplazasolicitada();
      }
    }
  }

  function ambas() {
    modificaracuerdo();
    eliminarAsignaciones();
    actualizarPlazas();
  }
</script>

<style>
  .seleccion {
    display: flex;
    flex-direction: row;
    align-items: center;
    margin-bottom: 1.3rem;
  }
  .valor-seleccionado {
    flex: 1;
    color: black;
    font-size: 1.1rem;
  }
  .actions {
    margin-top: 2em;
  }
  .empty {
    color: rgb(156, 156, 156);
    font-style: italic;
    font-size: 0.9rem;
  }
  #warning {
    text-align: center;
    color: red;
  }
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Modifica Acuerdo</Label>
  </Title>
  <Content>
    <Select style="width: 100%" bind:value={acuerdo.estado} label="Estados">
      <Option value="" />
      {#each estados as estado}
        <Option value={estado} selected={acuerdo.estado === estado}>
          {estado}
        </Option>
      {/each}
    </Select>

    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <!--------------- Titulaciones ----------------->
    <Dialog
      bind:this={listTitulaciones}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield
          label="Buscador"
          style="width: 100%"
          bind:value={filtroTitulaciones} />
      </Title>
      <Content component={List} id="list-content">
        {#each TitulacionesFiltradas as t}
          <Item
            on:click={() => {
              acuerdo.titulacion = t.codigo_titulacion;
              listTitulaciones.close();
            }}>
            <Text>{t.titulacion_castellano}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Titulación:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if modificaacuerdo.nombre_titulacion}
            {modificaacuerdo.nombre_titulacion}
          {:else}
            <span class="empty">Selecciona una titulación</span>
          {/if}
        </span>
        <Button on:click={() => listTitulaciones.open()}>
          <div class="material-icons">search</div>
          <Label>Titulaciones</Label>
        </Button>
      </div>
    </div>

    <!--------------- Periodos ----------------->

    <Dialog
      bind:this={listPeriodos}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield
          label="Buscador"
          style="width: 100%"
          bind:value={filtroPeriodos} />
      </Title>
      <Content component={List} id="list-content">
        {#if filtroPeriodos === ''}
          {#each periodos as p}
            <Item
              on:click={() => {
                modificaacuerdo.periodo_academico = p.id_periodo;
                modificaacuerdo.año = p.año;
                modificaacuerdo.cuatrimestre = p.cuatrimestre;
                listPeriodos.close();
              }}>
              <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
            </Item>
          {/each}
        {:else}
          {#each PeriodosFiltrados as p}
            <Item
              on:click={() => {
                modificaacuerdo.periodo_academico = p.id_periodo;
                modificaacuerdo.año = p.año;
                modificaacuerdo.cuatrimestre = p.cuatrimestre;
                listPeriodos.close();
              }}>
              <Text>{p.año}-{p.año + 1} Q{p.cuatrimestre}</Text>
            </Item>
          {/each}
        {/if}
      </Content>
    </Dialog>

    <div>
      Periodo Acdémico:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if modificaacuerdo.año}
            {modificaacuerdo.año}-{modificaacuerdo.año + 1} Q{modificaacuerdo.cuatrimestre}
          {:else}
            <span class="empty">Selecciona un periodo</span>
          {/if}
        </span>
        <Button on:click={() => listPeriodos.open()}>
          <div class="material-icons">search</div>
          <Label>Periodos Académicos</Label>
        </Button>
      </div>
    </div>
    {#if modificaacuerdo.periodo_academico !== periodo_anterior && existe(modificaacuerdo.periodo_academico)}
      <div id="warning">{warning}</div>
    {/if}

    <div class="actions">
      <Actions>
        {#if modificaacuerdo.periodo_academico !== periodo_anterior && existe(modificaacuerdo.periodo_academico)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else if modificaacuerdo.periodo_academico !== periodo_anterior && !existe(modificaacuerdo.periodo_academico)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={ambas}>
            <Label>Salvar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={modificaracuerdo}>
            <Label>Salvar</Label>
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modifica Acuerdo</Label>
</Button>
