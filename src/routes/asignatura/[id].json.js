
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT * FROM asignaturas WHERE id_asignatura = ?`, [id], (err, asignatura) => {
        if (err) {
            console.log(err)
            jsonResponse(500, { error: `No he podido consultar la asignatura (${id}): ${err}` })
            return
        }
        db.all(`SELECT ofertas.*, asignaturas.codigo_asignatura, asignaturas.id_asignatura 
                FROM ofertas, asignaturas 
                WHERE ofertas.asignatura = asignaturas.id_asignatura
                AND asignaturas.id_asignatura = ?`, [id], (err, ofertas) => {
            if (err) {
                console.log(err)
                jsonResponse(500, { error: `No he podido consultar los acuerdos (${id}): ${err}` })
                return
            }
            jsonResponse(200, {
                ...asignatura,
                ofertas,
            });
        })
    })
}