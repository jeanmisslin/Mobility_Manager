
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const eliminaoferta = JSON.parse(body)
        db.run(`DELETE FROM ofertas 
                WHERE ofertas.id_oferta = ?`, [
                    eliminaoferta.oferta
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `No se puede eliminar la oferta: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}