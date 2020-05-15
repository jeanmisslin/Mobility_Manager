
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT estudiantes.*, universidades.nombre_universidad, universidades.pais, universidades.id_universidad 
            FROM estudiantes, universidades WHERE estudiantes.universidad = universidades.id_universidad AND id_estudiante = ?`, [id],
        (err, estudiante) => {
            if (err) {
                console.log(err)
                jsonResponse(500, { error: `No he podido consultar el estudiante (${id}): ${err}` })
                return
            }
            db.all(`SELECT a.*, p.año, p.cuatrimestre, t.titulacion_catalan, t.titulacion_castellano, t.titulacion_ingles, t.ciclo 
                  FROM acuerdos_academicos as a, periodos_academicos as p, titulaciones as t 
                  WHERE a.periodo_academico = p.id_periodo 
                  AND a.titulacion = t.codigo_titulacion 
                  AND a.estudiante = ?`, [id],
                (err, acuerdos) => {
                    if (err) {
                        console.log(err)
                        jsonResponse(500, { error: `No he podido consultar los acuerdos (${id}): ${err}` })
                        return
                    }
                    db.all(`SELECT asignaturas.*, ofertas.*, asignaciones.*, ac.* 
                            FROM asignaturas INNER JOIN ofertas, asignaciones, acuerdos_academicos as ac
                            ON ac.estudiante = ? AND 
                               ac.id_acuerdo = asignaciones.acuerdo_academico AND 
                               asignaciones.oferta = ofertas.id_oferta AND 
                               ofertas.asignatura = asignaturas.id_asignatura`, [id],
                        (err, asignaturas) => {
                            if (err) {
                                console.log(err)
                                jsonResponse(500, { error: `No he podido consultar las asignaturas (${id}): ${err}` })
                                return
                            }
                            jsonResponse(200, {
                                ...estudiante,
                                acuerdos,
                                asignaturas,
                            });
                        })
                })

        })
}