<script>
  export let estudiante;
  export let universidades;
  export let estudiantes;
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
  let ListUniversidades;
  let ListPeriodos;

  let menuSurface;

  function listUniversidades() {}
  function listPeriodos() {}
  function listTitulaciones() {}

  let {
    apellidos,
    nombre,
    universidad,
    codigo_universidad,
    pais,
    email,
    titulacion,
    id_acuerdo,
    acuerdos,
    asignaturas
  } = estudiante;

  export let modificaestudiante = {
    open: false,
    estudiante: email,
    email: email,
    apellidos: apellidos,
    nombre: nombre,
    universidad: codigo_universidad
  };

  let warning = "Ya existe un/a estudiante con el mismo email";

  let message;

  let filtro = "";

  $: universidadesFiltradas = universidades.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_universidad, filtro) ||
      strIn(e.universidad, filtro) ||
      strIn(e.pais, filtro)
    );
  });

  function existe(e) {
    let introducido = estudiantes.find(est => est.email === e);
    return introducido;
  }

  function modificarestudiante() {
    fetch(`modificaestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaestudiante)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
        onModificado(modificaestudiante.apellidos, 
                     modificaestudiante.nombre, 
                     modificaestudiante.email, 
                     estudiante.universidad,
                     estudiante.pais);
      });
  }

  function modificaracuerdo() {
    fetch(`modificaacuerdoestudiante.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaestudiante)
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

  function ambas(){
    modificarestudiante();
    modificaracuerdo();
  }

  function salto(){
    modificarestudiante();
    modificaracuerdo();
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
    <Label>Modifica Estudiante</Label>
  </Title>
  <Content>
    <Textfield
      label="Apellidos"
      style="width: 100%"
      bind:value={modificaestudiante.apellidos} />
    <Textfield
      label="Nombre"
      style="width: 100%"
      bind:value={modificaestudiante.nombre} />
    <Textfield
      label="Email"
      type="email"
      style="width: 100%"
      updateInvalid
      bind:value={modificaestudiante.email}
      input$autocomplete="email" />
    <HelperText validationMsg>No es una dirección de email válida.</HelperText>

    {#if modificaestudiante.email !== modificaestudiante.estudiante 
         && existe(modificaestudiante.email)}
      <div id="warning">{warning}</div> 
    {/if}

    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <!--------------- Universidades ----------------->
    <Dialog
      bind:this={listUniversidades}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield label="Buscador" style="width: 100%" bind:value={filtro} />
      </Title>
      <Content component={List} id="list-content">
        {#each universidadesFiltradas as u}
          <Item
            on:click={() => {
              modificaestudiante.universidad = u.codigo_universidad;
              estudiante.universidad = u.universidad;
              estudiante.pais = u.pais;
              listUniversidades.close();
            }}>
            <Text>{u.universidad}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Universidad:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if estudiante.universidad}
            {estudiante.universidad}
          {:else}
            <span class="empty">Selecciona una universidad</span>
          {/if}
        </span>
        <Button on:click={() => listUniversidades.open()}>
          <div class="material-icons">search</div>
          <Label>Universidades</Label>
        </Button>
      </div>
    </div>

    <div class="actions">
      <Actions>
        {#if modificaestudiante.email !== modificaestudiante.estudiante 
             && existe(modificaestudiante.email)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else if modificaestudiante.email !== modificaestudiante.estudiante
            && !existe(modificaestudiante.email)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => salto()}>
            <a href="/estudiante/{modificaestudiante.email}">Salvar</a>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => ambas()}>
              Salvar
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modifica Estudiante</Label>
</Button>