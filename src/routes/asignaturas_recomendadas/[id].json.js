
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT acuerdos_academicos.*, periodos_academicos.año, periodos_academicos.cuatrimestre 
            FROM acuerdos_academicos, periodos_academicos 
            WHERE periodo_academico = id_periodo AND id_acuerdo = ?`, [id], (err, acuerdo)=> {
        if(err) {
            console.log(err)
            jsonResponse(500, { error: `No se puede realizar la consulta: ${err}` })
            return
        }
        jsonResponse(200, acuerdo);
    })
}