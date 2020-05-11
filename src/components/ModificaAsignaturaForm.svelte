<script>

  export let asignatura;
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

  let warning = "Ya existe una asignatura con el mismo código";

  let array = [2.5,3,4.5,5,6,7,7.5,9,10,12,15,24,30];

  let menuSurface;

  let idiomas = [`CAT`, `CAST`, `ING`, `CAT/CAST`, `CAT/ING`, `CAST/ING`, `CAT/CAST/ING`];

  let {
    id_asignatura,
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
    id: id_asignatura,
    codigo_actual: codigo_asignatura,
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

  function existe(a) {
    let introducido = asignaturas.find(asg => asg.codigo_asignatura === a);
    return introducido;
  }

  function modificarasignatura() {
    fetch(`modificaasignatura.json`, {
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
        onModificado(modificaasignatura.codigo, 
                     modificaasignatura.idioma, 
                     modificaasignatura.ects,
                     modificaasignatura.ncat,
                     modificaasignatura.ncast,
                     modificaasignatura.ning,
                     modificaasignatura.pscat,
                     modificaasignatura.pscast,
                     modificaasignatura.psing);
      });
  }
</script>

<style>
  .actions {
    margin-top: 2em;
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
    <Label>Modifica Asignatura</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={modificaasignatura.codigo} />
    {#if modificaasignatura.codigo !== modificaasignatura.codigo_actual 
         && existe(modificaasignatura.codigo)}
         <div id="warning">{warning}</div>
    {/if}
    <Textfield
      label="Título en Catalán"
      style="width: 100%"
      bind:value={modificaasignatura.ncat} />
    <Textfield
      label="Título en Castellano"
      style="width: 100%"
      bind:value={modificaasignatura.ncast} />
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
    <Select
      style="width: 100%"
      bind:value={modificaasignatura.ects}
      label="ECTS">
      <Option value="" />
      {#each array as e}
        <Option value={e} selected={modificaasignatura.ects === e}>
          {e}
        </Option>
      {/each}
    </Select>
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
        {#if modificaasignatura.codigo !== modificaasignatura.codigo_actual 
             && existe(modificaasignatura.codigo)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else if modificaasignatura.codigo !== modificaasignatura.codigo_actual 
             && !existe(modificaasignatura.codigo)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => modificarasignatura()}>
            Salvar
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={() => modificarasignatura()}>
            Salvar
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modifica Asignatura</Label>
</Button>