#!/bin/bash
echo"
╔═════════════════════════════════════════════════════════════╗
║     _         _                        _   _                ║
║    / \  _   _| |_ ___  _ __ ___   __ _| |_(_)_______ _ __   ║
║   / _ \| | | | __/ _ \| '_ ` _ \ / _` | __| |_  / _ \ '__|  ║
║  / ___ \ |_| | || (_) | | | | | | (_| | |_| |/ /  __/ |     ║
║ /_/   \_\__,_|\__\___/|_| |_| |_|\__,_|\__|_/___\___|_|     ║
║                                                             ║
║               CRIADO COM MUITO AMOR POR                     ║
║                  ERICK LUIZ BERTOLINI                       ║
║                                                             ║
╚═════════════════════════════════════════════════════════════╝"

mkdir ~/Automatizer
cp  ./gulpfile.js ~/Automatizer
cp  ./criador.sh ~/Automatizer
cd ..
rm -rf Automatizer
rm Automatizer.zip
cd ~/Automatizer
rm install.sh