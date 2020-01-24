import { db } from '../db'

export function get(req, res, next) {
  const jsonResponse = (code, obj) => {
    res.writeHead(code, { 'Content-Type': 'application/json' });
    res.end(JSON.stringify(obj))
  }

  db.all(`SELECT universidades.* FROM universidades ORDER BY universidad`, (err, universidades) => {
    if (err) {
      console.log(err)
      jsonResponse(500, { error: `No se pueden consultar universidades: ${err}` })
      return
    }
    jsonResponse(200, {
      universidades,
    })
  })
}