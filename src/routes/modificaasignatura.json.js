
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificaasignatura = JSON.parse(body)
        db.run(`UPDATE asignaturas 
                SET codigo_asignatura = ?, nombre_catalan = ?, nombre_castellano = ?, nombre_ingles = ?,
                idioma = ?, ects = ?, plan_de_estudios_catalan = ?, plan_de_estudios_castellano = ?,
                plan_de_estudios_ingles = ? WHERE asignaturas.id_asignatura = ?`, [
                    modificaasignatura.codigo,
                    modificaasignatura.ncat,
                    modificaasignatura.ncast,
                    modificaasignatura.ning,
                    modificaasignatura.idioma,
                    Number(modificaasignatura.ects),
                    modificaasignatura.pscat,
                    modificaasignatura.pscast,
                    modificaasignatura.psing,
                    modificaasignatura.id
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `No se puede modificar la asignatura: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}