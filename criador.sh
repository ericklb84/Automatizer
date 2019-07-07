#!/bin/bash
echo"";
echo"
    _         _                        _   _              
   / \  _   _| |_ ___  _ __ ___   __ _| |_(_)_______ _ __ 
  / _ \| | | | __/ _ \| '_ ` _ \ / _` | __| |_  / _ \ '__|
 / ___ \ |_| | || (_) | | | | | | (_| | |_| |/ /  __/ |   
/_/   \_\__,_|\__\___/|_| |_| |_|\__,_|\__|_/___\___|_|   

By: Erick."
echo "Você está criando esse site no:" 
pwd
echo "Correto? (S/N)"
read opcao;
if [ $opcao != "s" ];
then
echo "Ok, reformule e volte novamente"
else
npm init -y
npm install gulp --save-dev
mkdir src
cd src
touch index.html
mkdir css images fonts js scss
cd ..
npm install node-sass gulp-sass --save-dev
cp ~/automatizer/gulpfile.js ./
cd src/scss/
touch main.scss
cd ../..
code .
gulp

fi