
import { db } from '../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevoestudiante = JSON.parse(body)
        db.run(`INSERT INTO estudiantes (email, apellidos, nombre, universidad)
                VALUES(?, ?, ?, ?)`, [
                    nuevoestudiante.email,
                    nuevoestudiante.apellidos,
                    nuevoestudiante.nombre,
                    nuevoestudiante.universidad
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