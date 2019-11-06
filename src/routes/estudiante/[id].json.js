
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT estudiantes.*, universidades.universidad, universidades.pais 
            FROM estudiantes, universidades WHERE estudiantes.universidad = universidades.codigo AND email = ?`, [id], (err, row) => {
        const estudiante = row;
        db.all(`SELECT acuerdos_academicos.*, periodos_academicos.año, periodos_academicos.cuatrimestre, titulaciones.nombre_catalan, titulaciones.nombre_castellano, titulaciones.nombre_ingles 
            FROM acuerdos_academicos, periodos_academicos, titulaciones WHERE acuerdos_academicos.titulacion = titulaciones.codigo AND estudiante = ?`, [id],
        (err, rows) => {
            if(err) {
                console.log(err)
                jsonResponse(500, { error: `Cannot get subject ${id}: ${err}` })
                return
        }      
        estudiante.acuerdos = rows;
        jsonResponse(200, estudiante);
    })
    })
}