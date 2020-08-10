import { db } from '../../db'

export function post(req, res, next) {
    const jsonResponse = (code, obj) => {
        res.writeHead(code, { 'Content-Type': 'application/json' });
        res.end(JSON.stringify(obj))
    }

    let body = '';
    req.on('data', data => body += data)
    req.on('end', () => {
        const nuevoperiodo = JSON.parse(body)
        db.run(`INSERT INTO periodos_academicos (año, cuatrimestre)
                VALUES(?, ?)`, [
                    parseInt(nuevoperiodo.año),
                    parseInt(nuevoperiodo.cuatrimestre)
                ], function (err) {
            const id_periodo = this.lastID;
            console.log("periodoID modificado =", id_periodo);
            if (err) {
                jsonResponse(500, {
                    error: `Cannot insert the new periodo: ${err}`
                })
                return
            }
            jsonResponse(200, {
                error: null,
                id_periodo
            })
        })
    })

}