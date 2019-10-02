import { db } from '../db'

export function get(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const busqueda = JSON.parse(body)
        db.all(`SELECT * FROM periodos_academicos WHERE año = ?`, [
            parseInt(busqueda.año),
        ], (err, rows)=> {
            if(err) {
                console.log(err)
                jsonResponse(500, { error: `Cannot get periodos_academicos: ${err}` })
                return
            }
        jsonResponse(200, rows);
    })
    })
}