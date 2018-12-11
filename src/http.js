const http = require('http');

const app = http.createServer((req, res) => {
  res.end('Hello, world!');
});

app.listen(process.env.PORT);
