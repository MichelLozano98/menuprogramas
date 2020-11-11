main = do
putStrLn("Calculadora")
    putStrLn("-Elige una opcion-")
    putStrLn("1.- Presentar numeros del 1 al 10")
    putStrLn("2.- Factorial")
    putStrLn("3.- Palindromos")
    putStrLn("4.- Menu calculadora")
    putStrLn("5.- Salir")
    putStrLn(" ")
    opc1 <- getLine
    funcion opc1

funcion opc1 = do
    
    case opc1 of 
        "1" -> numerosunoadiez
        "2" -> facto
        "3" -> palindro
        "4" -> menucalcu
        "5" -> putStrLn("Salir")

numerosunoadiez = do
    print [1..10]
    main


facto = do
    factorial :: (Integral a) => a -> a
    factorial 0 = 1
    factorial n = n * factorial (n - 1)
    main

palindro = do
putStrLn("Ingresa una palabra: ")
pal <- getLine
let res = pal == reverse pal

if res == True
    then do
        putStrLn("Si es un palindromo")
        main
    else do
        putStrLn("No es un palindromo")
        main

menucalcu = do

    putStrLn("Calculadora")
    putStrLn("-Elige una opcion-")
    putStrLn("1.- Suma")
    putStrLn("2.- Resta")
    putStrLn("3.- Multiplicacion")
    putStrLn("4.- Division")
    putStrLn("5.- Salir")
    putStrLn(" ")
    opc <- getLine

    funcion opc

funcion opc = do
    
    case opc of 
        "1" -> funcionSuma
        "2" -> funcionResta
        "3" -> funcionMultiplicacion
        "4" -> funcionDivision
        "5" -> putStrLn("Salir")
        _    -> putStrLn("otra opcion")

funcionSuma = do
    putStrLn("ingresa un numero: ")
    a <- getLine
    putStrLn("ingresa otro numero: ")
    b <- getLine

    let aInt = read a::Int
    let bInt = read b::Int
    let resultado = aInt + bInt 
                    
    putStrLn("La suma es: "++ show resultado)
    main

funcionResta = do
    putStrLn("Ingresa un numero: ")
    a <- getLine
    putStrLn("Ingresa otro numero: ")
    b <- getLine

    let aInt = read a::Int
    let bInt = read b::Int
    let resultado = aInt - bInt 
                    
    putStrLn("La resta es: "++ show resultado)
    main

funcionMultiplicacion = do
    putStrLn("Ingresa un numero: ")
    a <- getLine
    putStrLn("Ingresa otro numero: ")
    b <- getLine

    let aInt = read a::Int
    let bInt = read b::Int
    let resultado = aInt * bInt 
                    
    putStrLn("La multiplicacion es: "++ show resultado)
    main

funcionDivision = do
    putStrLn("Ingresa un numero: ")
    a <- getLine
    putStrLn("Ingresa otro numero: ")
    b <- getLine

    let aInt = read a::Int
    let bInt = read b::Int
    let resultado =div aInt  bInt 
                    
    putStrLn("La division es: "++ show resultado)
    main
