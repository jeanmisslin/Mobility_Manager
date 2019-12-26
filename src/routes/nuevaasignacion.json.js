
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const asignacion = JSON.parse(body)
        db.run(`INSERT INTO asignaciones (acuerdo_academico, oferta, estado_solicitud)
                VALUES(?, ?, ?)`, [
                    parseInt(asignacion.acuerdo),
                    parseInt(asignacion.oferta),
                    asignacion.estado
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot insert the new asignacion: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}