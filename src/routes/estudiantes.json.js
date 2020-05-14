import { db } from '../db'

export function get(req, res, next) {

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.all(`SELECT estudiantes.*, universidades.nombre_universidad, universidades.pais 
            FROM estudiantes, universidades
            WHERE estudiantes.universidad = universidades.id_universidad`, (err, estudiantes) => {
        if (err) {
            console.log(err)
            jsonResponse(500, { error: `No se pueden consultar estudiantes: ${err}` })
            return
        }
        jsonResponse(200, {
            estudiantes,
        });
    })
}