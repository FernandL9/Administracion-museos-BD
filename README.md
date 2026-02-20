# Base de Datos Museo

## Descripción

Este proyecto es un sistema de gestión de base de datos para un museo. Incluye una aplicación web full-stack que permite registrar artistas, 
obras de arte (pinturas y esculturas), hechos históricos, empleados y generar reportes. El backend está construido con Node.js y Express, 
utilizando PostgreSQL como base de datos, y el frontend consta de páginas HTML estáticas.

## Tecnologías Utilizadas

- **Backend**: Node.js, Express.js
- **Base de Datos**: PostgreSQL
- **Frontend**: HTML, CSS, JavaScript (páginas estáticas)
- **Dependencias**:
  - `express`: Framework web para Node.js
  - `morgan`: Middleware de logging para Express
  - `pg`: Cliente PostgreSQL para Node.js

## Instalación

1. Clona el repositorio o descarga los archivos del proyecto.

2. Instala las dependencias:
   ```
   npm install
   ```

3. Configura la base de datos PostgreSQL:
   - Crea una base de datos en PostgreSQL.
   - Ejecuta el script `src/BD/script.sql` para crear las tablas.
   - Ejecuta `src/BD/Inserts.sql` para insertar datos iniciales.

4. Configura la conexión a la base de datos en `src/Postgresql/conexionPost.js` (asegúrate de que los parámetros de conexión sean correctos).

## Uso

1. Para iniciar el servidor en modo producción:
   ```
   npm start
   ```

2. Para desarrollo (con recarga automática):
   ```
   npm run dev
   ```

3. Abre tu navegador y ve a `http://localhost:3000` para acceder a la aplicación.

## Estructura del Proyecto

- `src/`
  - `config.js`: Configuración del puerto del servidor.
  - `index.js`: Punto de entrada de la aplicación Express.
  - `BD/`: Scripts SQL para la base de datos.
  - `HTML/`: Páginas HTML del frontend.
  - `Postgresql/`: Configuración de conexión a PostgreSQL.
  - `routes/`: Definiciones de rutas de la API.

## Funcionalidades

- Registro de artistas
- Registro de obras de arte (pinturas y esculturas)
- Gestión de empleados (curadores, etc.)
- Registro de hechos históricos del museo
- Generación de reportes (artistas, colecciones, obras, etc.)
- Consulta de colecciones, salas de exposición, idiomas, etc.

## API Endpoints

La API está disponible bajo `/api`. Algunos endpoints principales:

- `GET /api/`: Bienvenida a la API
- `POST /api/historico-museo`: Registrar hecho histórico
- `GET /api/idiomas`: Obtener lista de idiomas
- `GET /api/colecciones`: Obtener colecciones por museo
- `GET /api/empleados-curador`: Obtener curadores activos
- `GET /api/salas`: Obtener salas de exposición
- `POST /api/obras`: Registrar obra de arte
- Y más endpoints para consultas y reportes...

## Contribución

Si deseas contribuir al proyecto, por favor sigue estos pasos:

1. Haz un fork del repositorio.
2. Crea una rama para tu feature (`git checkout -b feature/nueva-funcionalidad`).
3. Haz commit de tus cambios (`git commit -am 'Agrega nueva funcionalidad'`).
4. Haz push a la rama (`git push origin feature/nueva-funcionalidad`).
5. Abre un Pull Request.

## Licencia

Este proyecto está bajo la Licencia ISC.
