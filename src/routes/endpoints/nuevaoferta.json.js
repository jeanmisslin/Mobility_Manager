
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevaoferta = JSON.parse(body)
        db.run(`INSERT INTO ofertas (asignatura, periodo_academico, titulacion,
                plazas_ofertadas, plazas_disponibles, plazas_concedidas, plazas_solicitadas)
                VALUES(?, ?, ?, ?, ?, ?, ?)`, [
                    nuevaoferta.asignatura,
                    parseInt(nuevaoferta.periodo_academico),
                    nuevaoferta.titulacion,
                    parseInt(nuevaoferta.plazas_ofertadas),
                    parseInt(nuevaoferta.plazas_ofertadas),
                    0,
                    0
                ], function (err) {
            const id_oferta = this.lastID;
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot insert the new oferta: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
                id_oferta
            })
        })
    })

}