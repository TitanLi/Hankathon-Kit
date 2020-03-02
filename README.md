# Hankathon-Kit
OS : MacOS

Source : [https://github.com/HanGee/Hankathon](https://github.com/HanGee/Hankathon)

NodeJS version : v6
## Step 1 : Install NodeJS on Mac OSX
1. Install NVM
```shell
$ curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash

$ source ~/.bashrc
```
2. Install NodeJS & NPM
```shell
$ nvm install 6
$ nvm alias default
```

## Step 2 : Install qt5 on Mac OSX
Source: http://macappstore.org/qt5/
1. Press Command+Space and type Terminal and press enter/return key.
2. Run in Terminal app:
```shell
$ ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
```
> and press enter/return key.
>> If the screen prompts you to enter a password, please enter your Mac's user password to continue. When you type the password, it won't be displayed on screen, but the system would accept it. So just type your password and press ENTER/RETURN key. Then wait for the command to finish.
3.	Run:
```shell
$ brew install qt5
```
## Step 3 : Installation
1. Download Hankathon Source Code
```shell
$ git clone https://github.com/HanGee/Hankathon.git
```
2. Change a directory
```shell
$ cd Hankathon
```
3. Download Garlic Source Code
```shell
$ git clone https://github.com/cfsghost/Garlic.git
```
4. Garlic component is used, initializing submodule to fetch Garlic is needed
```shell
$ git submodule init
$ git submodule update
```
5. Install modules with NPM
```shell
$ npm install
```

## Step 4 : Run Server
```shell
$ node app.js
```

Keyboard Shortcuts

> This lists keyboard shortcuts that you can use on Hankathon:
* `G` - Start Hankathon
* `F` - Enter/Exit Fullscreen mode