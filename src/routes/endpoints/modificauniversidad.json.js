
import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificauniversidad = JSON.parse(body)
        db.run(`UPDATE universidades 
                SET codigo_universidad = ?, nombre_universidad = ?, pais = ? 
                WHERE universidades.id_universidad = ?`, [
                    modificauniversidad.codigo_universidad,
                    modificauniversidad.nombre_universidad,
                    modificauniversidad.pais,
                    modificauniversidad.id
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `No se puede modificar la universidad: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}