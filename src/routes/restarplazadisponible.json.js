
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificacion = JSON.parse(body)
        db.run(`UPDATE ofertas SET plazas_disponibles = ?, plazas_concedidas = ? 
                WHERE ofertas.asignatura = ?`, [
                    parseInt(modificacion.disponibles),
                    parseInt(modificacion.concedidas),
                    modificacion.asignatura
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot updates: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}