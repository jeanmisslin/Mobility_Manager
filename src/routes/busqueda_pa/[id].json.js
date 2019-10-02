
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT * FROM periodos_academicos WHERE año = ?`, parseInt([id]), (err, row) => {
        const periodo = row;
        db.all(`SELECT periodos_academicos.año, periodos_academicos.cuatrimestre FROM periodos_academicos 
                WHERE periodos_academicos.año =  ?`, parseInt([id]),
        (err, rows) => {
            if(err) {
                console.log(err)
                jsonResponse(500, { error: `Cannot get periodo ${id}: ${err}` })
                return
        }      
        student.subjects = rows;
        jsonResponse(200, student);
    })
    })
}