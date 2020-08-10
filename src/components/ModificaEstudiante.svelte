<script>
  export let estudiante;
  export let universidades;
  export let estudiantes;
  export let onModificado;

  import IconButton from "@smui/icon-button";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  function listUniversidades() {}

  let dialog;
  let message;
  let warning = "Ya existe un/a estudiante con el mismo email";

  let {
    id_estudiante,
    apellidos,
    nombre,
    universidad,
    nombre_universidad,
    id_universidad,
    pais,
    email,
    titulacion,
    id_acuerdo,
    acuerdos,
    asignaturas
  } = estudiante;

  $: modificaestudiante = {
    id: id_estudiante,
    email_actual: email,
    email: email,
    apellidos: apellidos,
    nombre: nombre,
    universidad: id_universidad
  };

  let filtro = "";

  $: universidadesFiltradas = universidades.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e.codigo_universidad, filtro) ||
      strIn(e.nombre_universidad, filtro) ||
      strIn(e.pais, filtro)
    );
  });

  function existe(e) {
    let introducido = estudiantes.find(est => est.email === e);
    return introducido;
  }

  function modificarestudiante() {
    fetch(`/endpoints/modificaestudiante.json`, {
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
                     modificaestudiante.universidad,
                     estudiante.nombre_universidad,
                     estudiante.pais);
      });
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

    {#if modificaestudiante.email !== modificaestudiante.email_actual 
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
              modificaestudiante.universidad = u.id_universidad;
              estudiante.nombre_universidad = u.nombre_universidad;
              estudiante.pais = u.pais;
              listUniversidades.close();
            }}>
            <Text>{u.nombre_universidad}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      Universidad:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if estudiante.nombre_universidad}
            {estudiante.nombre_universidad}
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
        {#if modificaestudiante.email !== modificaestudiante.email_actual 
             && existe(modificaestudiante.email)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => modificarestudiante()}>
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