-- 8. En una serviteca se tiene una promoción en el precio
-- de las llantas. El precio de cada llanta depende de la
-- cantidad que compre el cliente así:
-- Llantas Valor de
-- cada llanta
-- Si se compran entre 1 a 4 llantas $ 200.000
-- Si se compran entre 5 y 8 llantas $ 150.000
-- Si se compran entre 9 y 12 llantas $ 100.000
-- Si se compran más de 12 llantas $ 70.000
-- Al valor final a pagar se le debe calcular el IVA (16%)
-- Mostrar el subtotal, el IVA y el valor final a pagar


print("Buenas, por favor ingrese la cantidad de llantas que desea comprar:")
local cantidad = io.read("*n")

local precio = 0

if 1<=cantidad and cantidad <=4 then
    precio = 200000
elseif 5<=cantidad and cantidad <=8 then
    precio = 150000
elseif 9<=cantidad and cantidad <=12 then
    precio = 100000
else
    precio = 70000
end

local subtotal = cantidad*precio
local iva = subtotal*0.16
local Total = subtotal+iva


print("El subtotal de la compra es de: ", subtotal, "\n","El IVA de la compra es de: ", iva, "\n", "El total de la compra es de: ", Total, "\n")