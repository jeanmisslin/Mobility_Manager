
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificaplazas = JSON.parse(body)
        db.run(`UPDATE ofertas SET plazas_solicitadas = ? 
                WHERE ofertas.id_oferta = ?`, [
            parseInt(modificaplazas.plazas_solicitadas) - 1,
            parseInt(modificaplazas.id_oferta)
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