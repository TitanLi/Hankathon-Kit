#!/bin/bash
echo Step1 : Change directory ~/Desktop
cd ~/Desktop
echo Step2 : Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
echo Step3 : Install curl
brew install curl
echo Step4 : Install vim
brew install vim
echo Step5 : Install NodeJS version 6
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~/.bashrc
nvm install 6
nvm alias default 6
echo Step6 : Install QT5
brew install qt5
echo Step7 : git clone https://github.com/HanGee/Hankathon.git
git clone https://github.com/HanGee/Hankathon.git
cd Hankathon
echo Step8 : git clone https://github.com/cfsghost/Garlic.git
git clone https://github.com/cfsghost/Garlic.git
echo Step9 : git clone https://github.com/TitanLi/Hankathon-Kit.git
git clone https://github.com/TitanLi/Hankathon-Kit.git
echo Step10 : Create .env file
echo "IRC_SERVER = '127.0.0.1'" > .env
echo Step11 : Copy BruneiHackaton.jpg
cp Hankathon-Kit/logo/BruneiHackaton.jpg logo/BruneiHackaton.jpg
echo Step12 : Copy app.js
cp Hankathon-Kit/app.js app.js
echo Step13 : Copy App.qml
cp Hankathon-Kit/App.qml App.qml
echo Step14 : Copy CountdownTimer.qml
cp Hankathon-Kit/CountdownTimer.qml CountdownTimer.qml
echo Step15 : Copy IRC.qml
cp Hankathon-Kit/IRC.qml IRC.qml
echo Step16 : Copy Logo.qml
cp Hankathon-Kit/Logo.qml Logo.qml
echo Step17 : Copy package.json
cp Hankathon-Kit/package.json package.json
echo Step18 : Copy TimerPanel.qml
cp Hankathon-Kit/TimerPanel.qml TimerPanel.qml
echo Step19 : Copy Install library
npm install
echo Step20 : Current working directory
pwd