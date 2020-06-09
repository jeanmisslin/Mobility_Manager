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
        db.run(`INSERT INTO universidades (codigo_universidad, nombre_universidad, pais)
                VALUES(?, ?, ?)`, [
                    nuevauniversidad.codigo_universidad,
                    nuevauniversidad.nombre_universidad,
                    nuevauniversidad.pais
                ], function (err) {
                    const id_universidad = this.lastID;
                    if (err) {
                        jsonResponse(500, { 
                            error: `Cannot insert the new universidad: ${err}`
                        })
                        return
                    }
                    jsonResponse(200, {
                        error: null,
                        id_universidad
                    })
        })
    })
}