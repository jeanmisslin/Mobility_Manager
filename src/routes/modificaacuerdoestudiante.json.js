
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
        db.run(`UPDATE acuerdos_academicos 
                SET estudiante = ? WHERE acuerdos_academicos.estudiante = ?`, [
                    modificaestudiante.email,
                    modificaestudiante.estudiante
                ], (err) => {
            if (err) {
                jsonResponse(500, { 
                    error: `Cannot update the learning agreement: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
            })
        })
    })

}