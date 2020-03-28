<script>

  export let asignatura;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, {
    Group,
    GroupItem,
    Label,
    Icon as ButtonIcon
  } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;

  let menuSurface;

  let idiomas = [`CAT`, `CAST`, `ING`, `CAT/CAST`, `CAT/ING`, `CAST/ING`, `CAT/CAST/ING`];

  let {
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

  let modificaasignatura = {
    open: false,
    codigo_ant: codigo_asignatura,
    codigo: codigo_asignatura,
    ncat: nombre_catalan,
    ncast: nombre_castellano,
    ning: nombre_ingles,
    idioma: idioma,
    ects: ects,
    pscat: plan_de_estudios_catalan,
    pscast: plan_de_estudios_castellano,
    psing: plan_de_estudios_ingles 
  };

  let message;

  function modificarasignatura() {
    fetch(`/asignatura/modificaasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaasignatura)
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
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Modifica Asignatura</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={modificaasignatura.codigo} />
    <Textfield
      label="Título en Catalán"
      style="width: 100%"
      bind:value={modificaasignatura.ncat} />
    <Textfield
      label="Título en Castellano"
      style="width: 100%"
      bind:value={modificaasignatura.ncat} />
    <Textfield
      label="Título en Inglés"
      style="width: 100%"
      bind:value={modificaasignatura.ning} />
    <Select
      style="width: 100%"
      bind:value={modificaasignatura.idioma}
      label="Idiomas">
      <Option value="" />
      {#each idiomas as idioma}
        <Option value={idioma} selected={modificaasignatura.idioma === idioma}>
          {idioma}
        </Option>
      {/each}
    </Select>
    <Textfield
      label="ECTS"
      style="width: 100%"
      bind:value={modificaasignatura.ects} />
    <Textfield
      label="Plan de estudios en Catalán"
      style="width: 100%"
      bind:value={modificaasignatura.pscat} />
    <Textfield
      label="Plan de estudios en Castellano"
      style="width: 100%"
      bind:value={modificaasignatura.pscast} />
    <Textfield
      label="Plan de estudios en Inglés"
      style="width: 100%"
      bind:value={modificaasignatura.psing} />
    <div style="height: 1em" />

    <div class="actions">
      <Actions>
          <Button color="secondary" variant="raised">
            <Label>Cancel</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={modificarasignatura}>
            <a href="/asignatura/{modificaasignatura.codigo}">Salvar</a>
          </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modifica Asignatura</Label>
</Button>
