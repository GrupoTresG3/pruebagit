#!/bin/bash


echo "Escribe la ruta del repositorio"
read ruta 
cd $ruta

# Comprobamos si el directorio en el que estamos es de un repositorio git
if [ ! -d '.git' ]; then
	echo "Esta carpeta no contiene un repositorio Git"
	read repositorio
	echo "# $repositorio" >> README.md
	git init
	git add README.md
	git commit -m "first commit"
	git remote add origin https://github.com/vanne4394/$repositorio.git
	git push -u origin master
	exit -1
fi

