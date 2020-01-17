import { db } from '../db'

export function get(req, res, next) {

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.all(`SELECT asignaturas.*, ofertas.id_oferta, ofertas.asignatura, MIN(ofertas.titulacion), 
    ofertas.plazas_ofertadas, ofertas.plazas_disponibles, ofertas.plazas_concedidas, 
    ofertas.plazas_solicitadas, periodos_academicos.* , titulaciones.*
    FROM asignaturas INNER JOIN ofertas, periodos_academicos, titulaciones
    ON asignaturas.codigo_asignatura = ofertas.asignatura
    AND periodos_academicos.id_periodo = ofertas.periodo_academico
    AND titulaciones.codigo_titulacion = ofertas.titulacion
    GROUP BY ofertas.asignatura ORDER BY ofertas.asignatura`, (err, unaofertaporasignatura) => {
        if (err) {
            console.log(err)
            jsonResponse(500, { error: `No se pueden consultar ofertas: ${err}` })
            return
        }
        console.log(unaofertaporasignatura)
        jsonResponse(200, {
            unaofertaporasignatura,
        });
    })
}