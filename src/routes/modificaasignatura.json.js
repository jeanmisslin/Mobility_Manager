
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
                    modificaasignatura.codigo_asignatura,
                    modificaasignatura.nombre_catalan,
                    modificaasignatura.nombre_castellano,
                    modificaasignatura.nombre_ingles,
                    modificaasignatura.idioma,
                    Number(modificaasignatura.ects),
                    modificaasignatura.plan_de_estudios_catalan,
                    modificaasignatura.plan_de_estudios_castellano,
                    modificaasignatura.plan_de_estudios_ingles,
                    modificaasignatura.id_asignatura
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