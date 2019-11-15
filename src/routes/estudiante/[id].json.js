
import { db } from '../../db'

export function get(req, res, next) {
    const id = req.params.id;

    const jsonResponse = (code, obj) => {
        res.writeHead(code, {'Content-Type': 'application/json'});
        res.end(JSON.stringify(obj))
    }

    db.get(`SELECT estudiantes.*, universidades.universidad, universidades.pais, universidades.codigo_universidad 
            FROM estudiantes, universidades WHERE estudiantes.universidad = universidades.codigo_universidad AND email = ?`, [id], (err, row) => {
        const estudiante = row;
        db.all(`SELECT acuerdos_academicos.*, periodos_academicos.año, periodos_academicos.cuatrimestre, titulaciones.nombre_catalan, titulaciones.nombre_castellano, titulaciones.nombre_ingles 
            FROM acuerdos_academicos, periodos_academicos, titulaciones WHERE acuerdos_academicos.periodo_academico = periodos_academicos.id_periodo AND acuerdos_academicos.titulacion = titulaciones.codigo_titulacion AND acuerdos_academicos.estudiante = ?`, [id],
        (err, rows) => {
            if(err) {
                console.log(err)
                jsonResponse(500, { error: `Cannot get subject ${id}: ${err}` })
                return
        }      
        estudiante.acuerdos = rows;
    })
        db.all(`SELECT asignaturas.*, ofertas.*, asignaciones.*, acuerdos_academicos.* 
                FROM asignaturas INNER JOIN ofertas, asignaciones, acuerdos_academicos 
                ON acuerdos_academicos.estudiante = ? AND acuerdos_academicos.id_acuerdo = asignaciones.acuerdo_academico 
                AND asignaciones.oferta = ofertas.id_oferta AND ofertas.asignatura = asignaturas.codigo_asignatura`, [id],
        (err, rows) => {
            if(err) {
                console.log(err)
                jsonResponse(500, { error: `Cannot get subject ${id}: ${err}` })
                return
        }      
        estudiante.asignaturas = rows;
        jsonResponse(200, estudiante);
    })
    })
}