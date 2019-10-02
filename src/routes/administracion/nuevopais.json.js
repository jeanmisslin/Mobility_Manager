import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevopais = JSON.parse(body)
        db.run(`INSERT INTO paises (pais)
                VALUES (?)`, [
                    nuevopais.pais,
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot insert the new pais: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}