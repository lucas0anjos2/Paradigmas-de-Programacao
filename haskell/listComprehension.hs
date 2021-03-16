-- Compreensão de listas

x = [x | x <- [1,2,3]]
x = [x | x <- [1..10]]
x = [x+1 | x <- [1..10]]
x = [x+10 | x <- [1..10]]
x = [x*x | x <- [1..10]]
x = [x*x | x <- [1..10], x > 5] -- lista com quadrados de valores entre 1 e 10 que são maiores que 5
x = [x | x <- [1..10], mod x 2 == 0] -- lista de 1 a 10 somente com os valores pares
x = [x | x <- [1..10], mod x 2 == 0, x > 5] -- lista de 1 a 10 somente com os valores pares e maiores que 5
x = [(x,y) | x <- [1..5], y <- [6..10]] -- lista de tuplas

-- Funções prontas

import Data.List
x =  sort [5,4,6,3,1]

x =  sort [5,4,6,3,1]
y = [4,4,4]

z = zip x y 

map (+5) [5,8,10] -- realiza a operação dentro dos parenteses sobre a lista
map (sqrt) [5,8,10]

sq :: Int -> Int
sq x = x*x
y = map sq [5,10,20]

filter (>5) [5,8,10] -- aplica o filtro dentro dos parenteses sobre a lista

--  Usando filter para números primos:

-- função que retorna lista dos divisíveis
fatores :: Int -> [Int]
fatores n = [i | i <- [1..n],  mod n i == 0]

isPrimo :: Int -> Bool
isPrimo 1 = True
isPrimo n = if(fatores n) == [1,n] then True
            else False

x = [1..1000]
z = filter isPrimo x