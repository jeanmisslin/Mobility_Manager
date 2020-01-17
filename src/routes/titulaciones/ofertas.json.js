import { db } from '../../db'

export function get(req, res, next) {

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.all(`SELECT asignaturas.*, ofertas.*, periodos_academicos.* , titulaciones.*
    FROM asignaturas INNER JOIN ofertas, periodos_academicos, titulaciones
    ON asignaturas.codigo_asignatura = ofertas.asignatura
    AND periodos_academicos.id_periodo = ofertas.periodo_academico
    AND titulaciones.codigo_titulacion = ofertas.titulacion ORDER BY ofertas.asignatura`, (err, ofertas) => {
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