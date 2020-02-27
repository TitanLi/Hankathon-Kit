const irc = require('slate-irc');
const net = require('net');
const dotenv = require('dotenv').config();

const stream = net.connect({
	    port: 6667,
	    host: process.env.IRC_SERVER
});

const client = irc(stream);

client.nick('Hackathon Taiwana');
client.user('Taiwan', 'Taiwan');

client.join('#HackathonTaiwan');
client.send('#HackathonTaiwan', 'asd');
