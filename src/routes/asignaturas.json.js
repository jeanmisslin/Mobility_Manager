import { db } from '../db'

export function get(req, res, next) {

    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    db.all(`SELECT * FROM asignaturas ORDER BY codigo_asignatura`, (err, rows)=> {
        if(err) {
            console.log(err)
            jsonResponse(500, { error: `No se puede realizar la consulta: ${err}` })
            return
        }
        jsonResponse(200, rows);
    })
}