const irc = require('slate-irc');
const net = require('net');
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const dotenv = require('dotenv').config();
const app = express();
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

const stream = net.connect({
	port: 6667,
	host: process.env.IRC_SERVER
});

const client = irc(stream);
client.join('#HackathonTaiwan');

app.get('/IRC', (req, res) => {
	let user = req.query.user;
	let message = req.query.message;
	console.log(`${new Date()} ${user} => ${message}`)
	if (message == undefined || user == undefined) {
		res.status(400).send({ message: 'message or user not undefined' });
	} else {
		client.nick(`${user}`);
		client.user('Taiwan', 'Taiwan');
		client.send('#HackathonTaiwan', `${message}`);
		res.send({ 'status': 'ok' });
	}
});

app.listen(3000);