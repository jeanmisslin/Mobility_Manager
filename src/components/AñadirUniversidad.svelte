<script>
  export let universidades;  

  import MenuSurface, { Anchor } from "@smui/menu-surface";
  import IconButton from "@smui/icon-button";
  import Select, { Option } from "@smui/select";
  import Textfield from "@smui/textfield";
  import HelperText from "@smui/textfield/helper-text/index";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let paises = ["Afganistán","Albania","Alemania","Andorra","Angola","Antigua y Barbuda",
                "Arabia Saudita","Argelia","Argentina","Armenia","Australia","Austria",
                "Azerbaiyán","Bahamas","Bangladés","Barbados","Baréin","Bélgica","Belice",
                "Benín","Bielorrusia","Birmania","Bolivia","Bosnia y Herzegovina","Botsuana",
                "Brasil","Brunéi","Bulgaria","Burkina Faso","Burundi","Bután","Cabo Verde",
                "Camboya","Camerún","Canadá","Catar","Chad","Chile","China","Chipre",
                "Ciudad del Vaticano","Colombia","Comoras","Corea del Norte","Corea del Sur",
                "Costa de Marfil","Costa Rica","Croacia","Cuba","Dinamarca","Dominica","Ecuador",
                "Egipto","El Salvador","Emiratos Árabes Unidos","Eritrea","Eslovaquia","Eslovenia",
                "España","Estados Unidos","Estonia","Etiopía","Filipinas","Finlandia","Fiyi",
                "Francia","Gabón","Gambia","Georgia","Ghana","Granada","Grecia","Guatemala","Guyana",
                "Guinea","Guinea ecuatorial","Guinea-Bisáu","Haití","Honduras","Hungría","India",
                "Indonesia","Irak","Irán","Irlanda","Islandia","Islas Marshall","Islas Salomón",
                "Israel","Italia","Jamaica","Japón","Jordania","Kazajistán","Kenia","Kirguistán",
                "Kiribati","Kuwait","Laos","Lesoto","Letonia","Líbano","Liberia","Libia",
                "Liechtenstein","Lituania","Luxemburgo","Madagascar","Malasia","Malaui","Maldivas",
                "Malí","Malta","Marruecos","Mauricio","Mauritania","México","Micronesia","Moldavia",
                "Mónaco","Mongolia","Montenegro","Mozambique","Namibia","Nauru","Nepal","Nicaragua",
                "Níger","Nigeria","Noruega","Nueva Zelanda","Omán","Países Bajos","Pakistán","Palaos",
                "Panamá","Papúa Nueva Guinea","Paraguay","Perú","Polonia","Portugal","Reino Unido",
                "República Centroafricana","República Checa","República de Macedonia",
                "República del Congo","República Democrática del Congo","República Dominicana",
                "República Sudafricana","Ruanda","Rumanía","Rusia","Samoa","San Cristóbal y Nieves",
                "San Marino","San Vicente y las Granadinas","Santa Lucía","Santo Tomé y Príncipe",
                "Senegal","Serbia","Seychelles","Sierra Leona","Singapur","Siria","Somalia",
                "Sri Lanka","Suazilandia","Sudán","Sudán del Sur","Suecia","Suiza","Surinam",
                "Tailandia","Tanzania","Tayikistán","Timor Oriental","Togo","Tonga",
                "Trinidad y Tobago","Túnez","Turkmenistán","Turquía","Tuvalu","Ucrania","Uganda",
                "Uruguay","Uzbekistán","Vanuatu","Venezuela","Vietnam","Yemen","Yibuti","Zambia",
                "Zimbabue"];

  let dialog;
  
  let nuevauniversidad;

  $: nuevauniversidad = {
    codigo_universidad: "",
    universidad: "",
    pais: ""
  };

  function listPaises() {}

  let message;

  let filtro = "";

  $: paisesFiltrados = paises.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e, filtro)
    );
  });

  function existe(u) {
    let introducido = universidades.find(uni => uni.codigo_universidad === u);
    return introducido;
  }

  function añadiruniversidad() {
    fetch(`nuevauniversidad.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(nuevauniversidad)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "nuevauniversidad saved";
        }
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
    <Label>Añadir Universidad</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={nuevauniversidad.codigo_universidad} />
    <Textfield
      label="Nombre"
      style="width: 100%"
      bind:value={nuevauniversidad.universidad} />
  
    <!-- Esto es un separador -->
    <div style="height: 1em" />

    <!--------------- Países ----------------->
    <Dialog
      bind:this={listPaises}
      aria-labelledby="list-title"
      aria-describedby="list-content">
      <Title id="list-title">
        <Textfield label="Buscador" style="width: 100%" bind:value={filtro} />
      </Title>
      <Content component={List} id="list-content">
        {#each paisesFiltrados as p}
          <Item
            on:click={() => {
              nuevauniversidad.pais = p;
              listPaises.close();
            }}>
            <Text>{p}</Text>
          </Item>
        {/each}
      </Content>
    </Dialog>

    <div>
      País:
      <div class="seleccion">
        <span class="valor-seleccionado">
          {#if nuevauniversidad.pais}
            {nuevauniversidad.pais}
          {:else}
            <span class="empty">Selecciona una país</span>
          {/if}
        </span>
        <Button on:click={() => listPaises.open()}>
          <div class="material-icons">search</div>
          <Label>Países</Label>
        </Button>
      </div>
    </div>

    <div class="actions">
      <Actions>
        {#if nuevauniversidad.codigo_universidad === "" || nuevauniversidad.universidad === "" 
             || nuevauniversidad.pais === "" || existe(nuevauniversidad.codigo_universidad)}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
        {:else}
          <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={añadiruniversidad}>
            <Label>
              Salvar
            </Label>
          </Button>
        {/if}
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Nueva Universidad</Label>
</Button>