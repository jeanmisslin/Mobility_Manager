<script>
  export let universidad;
  export let onModificado;
  
  import IconButton from "@smui/icon-button";
  import Textfield from "@smui/textfield";
  import Dialog, { Title, Content, Actions, InitialFocus } from "@smui/dialog";
  import Button, { Group, GroupItem, Label, Icon as ButtonIcon } from "@smui/button";
  import List, { Item, Graphic, Text } from "@smui/list";
  import { MDCDialog } from "@material/dialog";

  let dialog;
  let message;
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

  let codigo_actual = universidad.codigo_universidad;

  $: modificauniversidad = {
    id: universidad.id_universidad,
    codigo_universidad: universidad.codigo_universidad,
    nombre_universidad: universidad.nombre_universidad,
    pais: universidad.pais
  };

  function listPaises() {}

  let filtro = "";

  $: paisesFiltrados = paises.filter(e => {
    let strIn = (a, b) => a.toLowerCase().indexOf(b.toLowerCase()) != -1;
    return (
      strIn(e, filtro)
    );
  });

  function modificaruniversidad() {
    fetch(`modificauniversidad.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificauniversidad)
    })
      .then(body => body.json())
      .then(json => {
        if (json.error) {
          message = json.error;
        } else {
          message = "modificacion guardada";
        }
        onModificado({...modificauniversidad});
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
    <Label>Modifica Universidad</Label>
  </Title>
  <Content>
    <Textfield
      label="Código"
      style="width: 100%"
      bind:value={universidad.codigo_universidad} />
    <Textfield
      label="Nombre"
      style="width: 100%"
      bind:value={universidad.nombre_universidad} />
  
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
              universidad.pais = p;
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
          {#if modificauniversidad.pais}
            {modificauniversidad.pais}
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
        <Button color="secondary" variant="raised">
            <Label>Cancelar</Label>
          </Button>
          <Button color="secondary" variant="raised" on:click={modificaruniversidad}>
            <Label>
              Salvar
            </Label>
          </Button>
      </Actions>
    </div>
  </Content>
</Dialog>

<Button variant="raised" on:click={() => dialog.open()}>
  <Label>Modifica Universidad</Label>
</Button>