<script>
  export let warning;

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  function simpleDialog() {}

</script>

<style>

</style>

<div>
    <Dialog bind:this={simpleDialog} aria-labelledby="simple-title" aria-describedby="simple-content">
      <Title id="simple-title">Error</Title>
      <Content id="simple-content">
        {warning}
      </Content>
      <Actions>
        <Button color="secondary" variant="raised">
          <Label>Aceptar</Label>
        </Button>
      </Actions>
    </Dialog>

    <Button color="primary" variant="raised" on:click={() => simpleDialog.open()}><Label>Error</Label></Button>
  </div>