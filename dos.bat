@echo off
title Ejercicio 2

setlocal enabledelayedexpansion

echo %0
echo " "
echo " "
echo " "
echo " "
echo desarrollar un algoritmo que permita ingresar un numero. Si el numero es mayor que 5 informar el doble del numero; si es menor que 5 informar el triple y si es 5 mostrar un mensaje que diga Numero
echo " "
echo " "
echo " "
echo " "



SET "Numero=default"
set /P Numero=Escriba su numero: 

IF %Numero% GTR 5 (
    set /a Numero=%Numero%*2
    echo Numero = !Numero!
) ELSE IF %Numero% LSS 5 (
    set /a Numero=%Numero%*3
    echo Numero = !Numero!
) ELSE (
    echo Numero
)

@PAUSE