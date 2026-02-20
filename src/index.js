import express from 'express';
import { PORT } from './config.js';
import router from './routes/routes.js';

const app = express();
app.use(express.json());

app.use(express.static('src/HTML'));

app.use('/api', router);

app.listen(PORT)
console.log('Server is running on port', PORT);