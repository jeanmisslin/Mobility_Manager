import { db } from '../db'

export function get(req, res, next) {
  const jsonResponse = (code, obj) => {
    res.writeHead(code, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify(obj))
  }

  db.all(`SELECT titulaciones.* FROM titulaciones`, (err, titulaciones) => {
    if (err) {
      console.log(err)
      jsonResponse(500, { error: `No se pueden consultar titulaciones: ${err}` })
      return
    }
    jsonResponse(200, {
      titulaciones,
    })
  })
}