<script>
  export let asignaturas;
  export let onAsignatura;

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

  let nuevaasignatura = {
    open: false,
    id_asignatura: "",
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

  function existe(a) {
    let introducido = asignaturas.find(asg => asg.codigo_asignatura === a);
    return introducido;
  }

  async function añadirasignatura() {
    const body = await fetch(`nuevaasignatura.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevaasignatura)
    });
    const json = await body.json();
    if (json.error) {
      message = json.error;
      return null;
    } else {
      message = "nuevaasignatura saved";
      return json.id_asignatura;
    }
  }

  async function ejecutarambas() {
    const id_asignatura = await añadirasignatura();
    nuevaasignatura.id_asignatura = id_asignatura;
    if (onAsignatura) {
      onAsignatura({...nuevaasignatura});
    }
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
    <Label>Nueva Asignatura</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={nuevaasignatura.codigo_asignatura} />
    {#if existe(nuevaasignatura.codigo_asignatura)}
      <div id="warning">{warning}</div> 
    {/if}
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
    <Select
      style="width: 100%"
      bind:value={nuevaasignatura.ects}
      label="ECTS">
      <Option value="" />
      {#each ects as e}
        <Option value={e} selected={nuevaasignatura.ects === e}>
          {e}
        </Option>
      {/each}
    </Select>
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
        {#if nuevaasignatura.codigo_asignatura === '' || nuevaasignatura.nombre_catalan === '' 
             || nuevaasignatura.nombre_castellano === '' || nuevaasignatura.nombre_ingles === '' 
             || nuevaasignatura.idioma === '' || nuevaasignatura.ects === '' 
             || nuevaasignatura.plan_de_estudios_ingles === '' 
             || nuevaasignatura.plan_de_estudios_catalan === '' 
             || nuevaasignatura.plan_de_estudios_castellano === ''
             || existe(nuevaasignatura.codigo_asignatura)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={ejecutarambas}>
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
