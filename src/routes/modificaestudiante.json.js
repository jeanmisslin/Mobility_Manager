
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const modificaestudiante = JSON.parse(body)
        db.run(`UPDATE estudiantes 
                SET email = ?, apellidos = ?, nombre = ?, universidad = ? 
                WHERE estudiantes.id_estudiante = ?`, [
                    modificaestudiante.email,
                    modificaestudiante.apellidos,
                    modificaestudiante.nombre,
                    modificaestudiante.universidad,
                    modificaestudiante.id
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot insert the new student: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })
}