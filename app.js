const express = require('express');
const path = require('path');


const app = express();
const PORT = 3000;


app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));
app.use(express.urlencoded({ extended: true }));
app.use(express.static('public'));


const router = require('./routes/router');
app.use('/', router);


app.listen(PORT, () => {
    console.log(`Servidor em http://localhost:${PORT}`);
});