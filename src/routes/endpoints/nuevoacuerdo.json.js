
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const { acuerdo, estudiante } = JSON.parse(body)
        db.run(`INSERT INTO acuerdos_academicos (estudiante, titulacion, periodo_academico, estado) 
                VALUES(?, ?, ?, ?)`, [
                    estudiante.id_estudiante,
                    acuerdo.titulacion,
                    acuerdo.periodo_academico,
                    acuerdo.estado
                ], function (err) {
                    const id_acuerdo = this.lastID;
                    if (err) {
                        jsonResponse(500, { 
                            error: `Cannot insert the new acuerdo academico: ${err}`
                        })
                        return
                    }
                    jsonResponse(200, {
                        error: null,
                        id_acuerdo
                    })
        })
    })

}