import express from 'express';

const app = express();

app.get('/', (req, res) => {
	console.log('Hello root!');
	res.json('Hello Vu Duy Tu v9!');
});

app.listen(8080, () => {
	console.log('App started successfully v9!');
})