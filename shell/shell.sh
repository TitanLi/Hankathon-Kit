#!/bin/bash
echo Step1 : Install NodeJS version 6
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.32.1/install.sh | bash
source ~/.bashrc
nvm install 6
nvm alias default
echo Step2 : Install QT5
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" < /dev/null 2> /dev/null
brew install qt5
echo Step3 : git clone https://github.com/HanGee/Hankathon.git
git clone https://github.com/HanGee/Hankathon.git
cd Hankathon
echo Step4 : git clone https://github.com/cfsghost/Garlic.git
git clone https://github.com/cfsghost/Garlic.git
echo Step5 : git clone https://github.com/TitanLi/Hankathon-Kit.git
git clone https://github.com/TitanLi/Hankathon-Kit.git
echo Step6 : Create .env file
echo "IRC_SERVER = '127.0.0.1'" > .env
echo Step7 : Copy BruneiHackaton.png
cp Hankathon-Kit/logo/BruneiHackaton.png logo/BruneiHackaton.png
echo Step8 : app.js
cp Hankathon-Kit/app.js app.js
echo Step9 : App.qml
cp Hankathon-Kit/App.qml App.qml
echo Step10 : CountdownTimer.qml
cp Hankathon-Kit/CountdownTimer.qml CountdownTimer.qml
echo Step11 : IRC.qml
cp Hankathon-Kit/IRC.qml IRC.qml
echo Step12 : Logo.qml
cp Hankathon-Kit/Logo.qml Logo.qml
echo Step13 : package.json
cp Hankathon-Kit/package.json package.json
echo Step14 : TimerPanel.qml
cp Hankathon-Kit/TimerPanel.qml TimerPanel.qml
echo Step15 : Install library
npm install
echo Step16 : Current working directory
pwd