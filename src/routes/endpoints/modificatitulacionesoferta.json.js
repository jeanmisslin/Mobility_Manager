
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificacion = JSON.parse(body)
        db.run(`UPDATE ofertas SET titulacion = ?
                WHERE ofertas.id_oferta = ?`, [
                    modificacion.titulacion,
                    modificacion.oferta
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `No se puede modificar la oferta: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}