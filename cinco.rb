
# Hacer un algoritmo que permita ingresar el código
# de una categoría solo (1, 2) y la cantidad de días que
# estuvo ausente un empleado, la categoría 1 tiene un
# sueldo de $500 y se descuenta $20 por cada día
# ausente, la categoría 2 tiene un sueldo de $1000 y se
# descuenta $35 por cada día ausente, debe mostrar
# cuanto debe cobrar el empleado y deben tener en
# cuenta que sea una categoría valida y el caso de no
# serlo informar la situación.


puts "Buenas, por favor ingrese su categoria [1,2]"
CATEGORIA = gets.to_i

if (CATEGORIA != 1) && (CATEGORIA != 2)
  puts "Ha ingresado una categoria invalida"
  exit
end

puts "Perfecto, ahora ingrese los dias ausentes"
DA = gets.to_i

cobra = 0

if categoria = 1
  cobra = 500 - (DA * 20)
elsif categoria = 2
  cobra = 1000 - (DA*35)
end

if cobra >= 0
  puts "Vale perfecto, su total a cobrar es de #{cobra}"
else
  puts "Usted como que le debe mas bien plata a la empresa (Total: #{cobra}) osea que debe: #{cobra * -1}"
end