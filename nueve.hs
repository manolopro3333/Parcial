-- . Calcular la nota definitiva de un estudiante en una
-- materia. Se debe digitar la nota para cada previo y
-- examen final, y cada nota tendrá los siguientes
-- porcentajes:
-- Competencia Porcentaje
-- Previo 1 10%
-- Previo 2 20%
-- Previo 3 30%
-- Examen Final 40%
--Se debe mostrar la nota definitiva y un mensaje
-- indicando el concepto de la nota de acuerdo a lo
-- siguiente:
-- Definitiva Mensaje
-- Entre 1.0 y 2.9 Rendimiento BAJO
-- Entre 3.0 y 3.9 Rendimiento BASICO
-- Entre 4.0 y 4.5 Rendimiento ALTO
-- Entre 4.6 y 5.0 Rendimiento SUPERIOR --

getNum :: (Read a, Num a, Show a) => IO a
getNum = readLn

main :: IO ()
main = do
    putStrLn "Hola, por favor ingrese la nota de su previo 1"
    prev1 <- getNum
    putStrLn "Hola, por favor ingrese la nota de su previo 2"
    prev2 <- getNum
    putStrLn "Hola, por favor ingrese la nota de su previo 3"
    prev3 <- getNum
    putStrLn "Hola, por favor ingrese la nota de su examen final"
    exmFinal <- getNum

    let tprev1 = prev1 * 0.1
    let tprev2 = prev2 * 0.2
    let tprev3 = prev3 * 0.3
    let texmFinal = exmFinal * 0.4

    let nota = tprev1 + tprev2 + tprev3 + texmFinal

    if nota < 3.0 then
        print "Rendimiento BAJO"
    else if nota < 4.0 then
        print "Rendimiento BASICO"
    else if nota < 4.6 then
        print "Rendimiento ALTO"
    else
        print "Rendimiento SUPERIOR"