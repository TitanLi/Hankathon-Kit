# IRC-Server
OS : Debian
NodeJS version : v10

## Install libicu-dev
```shell
$ sudo apt-get install libicu-dev
```

## Install library
```shell
$ npm install
```

## Run IRC Server
```shell
$ pm2 start app.js --name irc-demo
```

## Test
```shell
$ node client.js
```