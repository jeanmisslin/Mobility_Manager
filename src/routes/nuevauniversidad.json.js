import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevauniversidad = JSON.parse(body)
        db.run(`INSERT INTO universidades (codigo_universidad, universidad, pais)
                VALUES(?, ?, ?)`, [
                    nuevauniversidad.codigo_universidad,
                    nuevauniversidad.universidad,
                    nuevauniversidad.pais
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot insert the new universidad: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}