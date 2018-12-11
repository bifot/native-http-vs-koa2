# native-http-vs-koa2

Performance check between native http module vs koa2.

## Servers

```js
const http = require('http');

const app = http.createServer((req, res) => {
  res.end('Hello, world!');
});

app.listen(process.env.PORT);
```

vs

```js 
const Koa = require('koa');

const app = new Koa();

app.use((ctx) => {
  ctx.body = 'Hello, world!';
});

app.listen(process.env.PORT);
```

## Benchmarks

```sh
$ bash ./benchmarks/http.sh  # 104099 requests for 5 seconds
$ bash ./benchmarks/koa.sh   # 87970  requests for 5 seconds 
```


