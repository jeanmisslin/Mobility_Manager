<script>
  export let oferta;

  let modificacion = {
      disponibles: oferta.plazas_disponibles-1,
      concedidas: oferta.plazas_concedidas+1,
      asignatura: oferta.asignatura
  }

  function restar() {
    fetch(`restarplazadisponible.json`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(modificacion)
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

{restar({modificacion})}