import { db } from '../db'

export function get(req, res, next) {

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.all(`SELECT ofertas.*, asignaturas.*, periodos_academicos.*
            FROM ofertas INNER JOIN asignaturas, periodos_academicos
            ON asignaturas.id_asignatura = ofertas.asignatura
            AND periodos_academicos.id_periodo = ofertas.periodo_academico
            ORDER BY ofertas.asignatura`, (err, ofertas) => {
        if (err) {
            console.log(err)
            jsonResponse(500, { error: `No se pueden consultar ofertas: ${err}` })
            return
        }
        jsonResponse(200, {
            ofertas,
        });
    })
}