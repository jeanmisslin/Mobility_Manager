
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificaacuerdo = JSON.parse(body)
        db.run(`UPDATE acuerdos_academicos 
                SET titulacion = ?, periodo_academico = ?, estado = ? WHERE acuerdos.id_acuerdo = ?`, [
                    modificaacuerdo.titulacion,
                    modificaacuerdo.periodo_academico,
                    modificaacuerdo.estado,
                    modificaacuerdo.id_acuerdo
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot update the learning agreement: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}