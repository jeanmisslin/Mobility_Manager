# Mobiliy Manager

Programa para gestionar las solicitudes de estudiantes de 
mobilidad (Erasmus, etc.) en el Campus de Terrassa de la UPC.

TFG de Jean Misslin.

Hecho usando Svelte y Sapper.

La aplicación web desarrollada consta de ocho pantallas:

![Diagrama Pantallas](https://user-images.githubusercontent.com/33695119/86123225-6269ec80-bad9-11ea-854e-b07fec0c9808.JPG)

Los archivos con el código correspondiente a cada una de ellas se encuantran en las respectivas carpetas del proyecto:

![Rutas Pantallas](https://user-images.githubusercontent.com/33695119/86126173-2c7b3700-bade-11ea-9667-58fe5e5952e4.JPG)

Los componentes importados por las diferentes pantallas de la aplicación se encuentran en la ruta /TFG/src/components o en la ruta /TFG/node_modules/@smui dependiendo de si han sido programados para esta aplicación o pertenecen al paquete Svelte Material UI.

La pantalla Estudiates Incoming muestra un listado con los estudiantes que figuran en la base de datos, permite añadir un nuevo estudiante, permite añadir un nuevo periodo académico y permite filtrar el listado de estudiantes que se muestra por pantalla mediante un buscador y un selector de periodo académico:

