<script>
  export let oferta;
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

  let plazas = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15];

  let { asignatura, plazas_ofertadas, plazas_concedidas, periodo_academico } = oferta;

  let modificaoferta = {
    asignatura: asignatura,
    plazas_ofertadas: plazas_ofertadas,
    plazas_concedidas: plazas_concedidas,
    periodo_academico: periodo_academico
  };

  let message;

  function modificaroferta() {
    fetch(`modificaoferta.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificaoferta)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
        onModificado(modificaoferta.plazas_ofertadas);
      });
  }
</script>

<style>
</style>

<Dialog
  bind:this={dialog}
  aria-labelledby="dialog-title"
  aria-describedby="dialog-content">
  <Title>
    <Label>Modificar Oferta de Plazas</Label>
  </Title>
  <Content>
    <Select
      style="width: 100%"
      bind:value={modificaoferta.plazas_ofertadas}
      label="Plazas Ofertadas">
      <Option value="" />
      {#each plazas as e}
        <Option value={e} selected={modificaoferta.plazas_ofertadas === e}>
          {e}
        </Option>
      {/each}
    </Select>

    <div class="actions">
      <Actions>
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={modificaroferta}>
            <Label>Salvar</Label>
          </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modificar Plazas</Label>
</Button>