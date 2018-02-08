#!/bin/bash


echo "Escribe la ruta del repositorio"
read ruta 
cd $ruta

#pedimos el usuario de git
echo "Introduzca el usuario de git"
read usuario


# Comprobamos si el directorio en el que estamos es de un repositorio git
if [ ! -d '.git' ]; then
        export GIT_SSL_NO_VERIFY=1
        echo "Esta carpeta no contiene un repositorio Git."
        echo "Introduce el nombre del repositorio: "
        read repositorio
        echo "# $repositorio" >> README.md
        git init
        git add README.md
        git commit -m "first commit"
        git remote add origin https://github.com/$usuario/$repositorio.git
        git push -u origin master
        exit -1
fi      
        git add .
        echo "Introduce el mensaje del commit:"
        read version
        git commit -m "$version"
        git push origin master
