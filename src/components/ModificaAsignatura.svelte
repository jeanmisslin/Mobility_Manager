<script>
  export let asignatura;
  export let asignaturas;
  export let onModificado;
  
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";

  let dialog;
  let message;
  let warning = "Ya existe una asignatura con el mismo código";
  let ects = [2.5,3,4.5,5,6,7,7.5,9,10,12,15,24,30];
  let idiomas = [`CAT`, `CAST`, `ING`, `CAT/CAST`, `CAT/ING`, `CAST/ING`, `CAT/CAST/ING`];

  let modificaasignatura = {
    open: false,
    id_asignatura: asignatura.id_asignatura,
    codigo_actual: asignatura.codigo_asignatura,
    codigo_asignatura: asignatura.codigo_asignatura,
    nombre_catalan: asignatura.nombre_catalan,
    nombre_castellano: asignatura.nombre_castellano,
    nombre_ingles: asignatura.nombre_ingles,
    idioma: asignatura.idioma,
    ects: asignatura.ects,
    plan_de_estudios_catalan: asignatura.plan_de_estudios_catalan,
    plan_de_estudios_castellano: asignatura.plan_de_estudios_castellano,
    plan_de_estudios_ingles: asignatura.plan_de_estudios_ingles 
  };

  function existe(a) {
    let introducido = asignaturas.find(asg => asg.codigo_asignatura === a);
    return introducido;
  }

  function modificarasignatura() {
    fetch(`/endpoints/modificaasignatura.json`, {
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
        onModificado({...modificaasignatura});
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
      bind:value={modificaasignatura.codigo_asignatura} />
    {#if modificaasignatura.codigo_asignatura !== modificaasignatura.codigo_actual 
         && existe(modificaasignatura.codigo_asignatura)}
         <div id="warning">{warning}</div>
    {/if}
    <Textfield
      label="Título en Catalán"
      style="width: 100%"
      bind:value={modificaasignatura.nombre_catalan} />
    <Textfield
      label="Título en Castellano"
      style="width: 100%"
      bind:value={modificaasignatura.nombre_castellano} />
    <Textfield
      label="Título en Inglés"
      style="width: 100%"
      bind:value={modificaasignatura.nombre_ingles} />
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
      {#each ects as e}
        <Option value={e} selected={modificaasignatura.ects === e}>
          {e}
        </Option>
      {/each}
    </Select>
    <Textfield
      label="Plan de estudios en Catalán"
      style="width: 100%"
      bind:value={modificaasignatura.plan_de_estudios_catalan} />
    <Textfield
      label="Plan de estudios en Castellano"
      style="width: 100%"
      bind:value={modificaasignatura.plan_de_estudios_castellano} />
    <Textfield
      label="Plan de estudios en Inglés"
      style="width: 100%"
      bind:value={modificaasignatura.plan_de_estudios_ingles} />
    <div style="height: 1em" />

    <div class="actions">
      <Actions>
        {#if modificaasignatura.codigo_asignatura !== modificaasignatura.codigo_actual 
             && existe(modificaasignatura.codigo_asignatura)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
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