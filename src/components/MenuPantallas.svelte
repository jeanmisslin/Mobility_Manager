<script>
  export let menu;

  import Button, { Group, GroupItem, Label, Icon } from "@smui/button";
  import List, { Item, Graphic, Text, PrimaryText, SecondaryText, Separator } from "@smui/list";
  import Menu, { SelectionGroup, SelectionGroupIcon } from "@smui/menu";
  import { Anchor } from "@smui/menu-surface";

  function generarMenu() {
    let opciones = menu.split(",");
    return opciones;
  }

  function mayuscula(p) {
    let opcion = p[0].toUpperCase() + p.slice(1);
    return opcion;
  }

  let rutas = generarMenu();
</script>

  <div style="min-width: 100px;">
    <Button on:click={() => menu.setOpen(true)}>Menu</Button>
    <Menu bind:this={menu}>
      <List>
        {#each rutas as r}
          {#if r === 'estudiantes incoming'}
            <Item>
              <Text>
                <a href="../">{mayuscula(r)}</a>
              </Text>
            </Item>
          {:else}
            <Item>
              <Text>
                <a href="/{r}/">{mayuscula(r)}</a>
              </Text>
            </Item>
          {/if}
        {/each}
      </List>
    </Menu>
  </div>

