/* 
Desarrolle un algoritmo que permita determinar a
partir de un número de días, ingresado por pantalla,
¿Cuántos años, meses, semanas y días?; constituyen el
número de días.
Se asume que:
Un año corresponde a 360 días.
Un mes corresponde a 30 días.
Una semana corresponde a 7 días.
Ejemplo: 400 días equivale a 1 Año, 1 mes y 10 días

 */

import java.util.Scanner;

public class seis {

    public static void main(String[] args) {
        Scanner elinputxd = new Scanner(System.in);
        System.out.println("Buenas, por favor ingrese el numero de dias que desea calcular.");
        int rdias = elinputxd.nextInt();

        int aos = rdias/365;
        int meses = (rdias%365) /30;
        int semanas = ((rdias%365) % 30) / 7;
        int dias = ((rdias % 360) % 30) % 7;

        System.out.println(rdias + " Dias se puede representar o equivale a: " + aos + " Año(s) " + meses + " Mes(es) " + semanas + " Semana(s) " + dias + " dia(s).");
    }
}
