import express from 'express';
import { PORT } from './config.js';
import router from './routes/routes.js';

const app = express();
app.use(express.json());

// Sirve archivos estáticos desde la carpeta donde está tu HTML
app.use(express.static('src/HTML')); // aquí

app.use('/api', router);

app.listen(PORT)
console.log('Server is running on port', PORT);