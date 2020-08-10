
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevaasignatura = JSON.parse(body)
        db.run(`INSERT INTO asignaturas (codigo_asignatura, nombre_catalan, nombre_castellano,
                nombre_ingles, idioma, ects, plan_de_estudios_catalan, plan_de_estudios_castellano,
                plan_de_estudios_ingles) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?)`, [
                    nuevaasignatura.codigo_asignatura,
                    nuevaasignatura.nombre_catalan,
                    nuevaasignatura.nombre_castellano,
                    nuevaasignatura.nombre_ingles,
                    nuevaasignatura.idioma,
                    nuevaasignatura.ects,
                    nuevaasignatura.plan_de_estudios_catalan,
                    nuevaasignatura.plan_de_estudios_castellano,
                    nuevaasignatura.plan_de_estudios_ingles
                ], function (err) {
                    const id_asignatura = this.lastID;
                    if (err) {
                        jsonResponse(500, { 
                             error: `Cannot insert the new asignatura: ${err}`
                        })
                        return
                    }
                    jsonResponse(200, {
                    error: null,
                    id_asignatura
                    })
        })
    })

}