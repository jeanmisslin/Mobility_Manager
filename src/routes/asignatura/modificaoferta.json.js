
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificaoferta = JSON.parse(body)
        db.run(`UPDATE ofertas 
                SET plazas_ofertadas = ?, plazas_disponibles = ?
                WHERE ofertas.asignatura = ?`, [
                    parseInt(modificaoferta.plazas_ofertadas),
                    parseInt(modificaoferta.plazas_ofertadas)-parseInt(modificaoferta.plazas_concedidas),
                    modificaoferta.asignatura
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `No se puede modificar la asignatura: ${err}`
                })
                return
            }
            console.log(modificaoferta)
            jsonResponse(200, {
                error: null,
            })
        })
    })

}