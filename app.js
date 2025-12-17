const express = require('express');
const path = require('node:path');

const app = module.exports = express();
const port = 3000;

app.engine('.html', require('ejs').__express);

app.set('views', path.join(__dirname, 'public/views'));

app.use(express.static(path.join(__dirname, 'public')));
app.use('/src', express.static(path.join(__dirname, 'src')));
app.use('/data', express.static(path.join(__dirname, 'data')));

app.set('view engine', 'html');

app.get('/', (req, res) => {
  res.render('index');
});

app.get('/overview', (req, res) => {
  res.render('overview');
});

app.listen(port, () => {
  console.log(`Server is running at http://localhost:${port}/`);
});