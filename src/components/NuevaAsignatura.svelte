<script>
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

  let idiomas = [`CAT`, `CAST`, `ING`, `CAT/CAST`, `CAT/ING`, `CAST/ING`, `CAT/CAST/ING`];

  let nuevaasignatura = {
    open: false,
    codigo_asignatura: "",
    nombre_catalan: "",
    nombre_castellano: "",
    nombre_ingles: "",
    idioma: "",
    ects: "",
    plan_de_estudios_catalan: "",
    plan_de_estudios_castellano: "",
    plan_de_estudios_ingles: ""
  };

  let message;

  function añadirasignatura() {
    fetch(`nuevaasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaasignatura)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevaasignatura saved";
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
    <Label>Nueva Asignatura</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={nuevaasignatura.codigo_asignatura} />
    <Textfield
      label="Título en Catalán"
      style="width: 100%"
      bind:value={nuevaasignatura.nombre_catalan} />
    <Textfield
      label="Título en Castellano"
      style="width: 100%"
      bind:value={nuevaasignatura.nombre_castellano} />
    <Textfield
      label="Título en Inglés"
      style="width: 100%"
      bind:value={nuevaasignatura.nombre_ingles} />
    <Select
      style="width: 100%"
      bind:value={nuevaasignatura.idioma}
      label="Idiomas">
      <Option value="" />
      {#each idiomas as idioma}
        <Option value={idioma} selected={nuevaasignatura.idioma === idioma}>
          {idioma}
        </Option>
      {/each}
    </Select>
    <Textfield
      label="ECTS"
      style="width: 100%"
      bind:value={nuevaasignatura.ects} />
    <Textfield
      label="Plan de estudios en Catalán"
      style="width: 100%"
      bind:value={nuevaasignatura.plan_de_estudios_catalan} />
    <Textfield
      label="Plan de estudios en Castellano"
      style="width: 100%"
      bind:value={nuevaasignatura.plan_de_estudios_castellano} />
    <Textfield
      label="Plan de estudios en Inglés"
      style="width: 100%"
      bind:value={nuevaasignatura.plan_de_estudios_ingles} />
    <div style="height: 1em" />

    <div class="actions">
      <Actions>
        {#if nuevaasignatura.codigo_asignatura === '' || nuevaasignatura.nombre_catalan === '' || nuevaasignatura.nombre_castellano === '' || nuevaasignatura.nombre_ingles === '' || nuevaasignatura.idioma === '' || nuevaasignatura.ects === '' || nuevaasignatura.plan_de_estudios_ingles === '' || nuevaasignatura.plan_de_estudios_catalan === '' || nuevaasignatura.plan_de_estudios_castellano === ''}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={añadirasignatura}>
            <Label>Salvar</Label>
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nueva Asignatura</Label>
</Button>
