import { db } from '../../db'

export function get(req, res, next) {
  const jsonResponse = (code, obj) => {
    res.writeHead(code, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify(obj))
  }

  db.all(`SELECT * FROM asignaciones`, (err, asignaciones) => {
    if (err) {
      console.log(err)
      jsonResponse(500, { error: `No se pueden consultar asignaciones: ${err}` })
      return
    }
    jsonResponse(200, {
      asignaciones,
    })
  })
}