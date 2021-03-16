-- Lista
soma :: [Int] -> Int
soma [] = 0
soma (x:xs) = x + soma xs

-- Método para verificar se um valor existe ou não na lista
existe :: [Int] -> Int -> Bool
existe [] _ = False
existe (x:xs) n  | (x == n) = True
                 | otherwise =  existe xs n

-- Método para achar o maior valor da lista
maior :: [Int] -> Int
maior [x] = x
maior (x:xs) = if(x > maior xs) then x else maior xs
-- ou
--maior :: [Int] -> Int
--maior [x] = x
--maior (x:xs) | (x > maior xs) =  x
 --            | otherwise = maior xs

-- Método para achar o menor valor da lista
menor :: [Int] -> Int
menor [x] = x
menor (x:xs) = if(x < menor xs) then x else menor xs

-- Comparar duas listas, retorne verdadeiro caso todos os elementos forem iguais
comparar :: [Int] -> [Int] -> Bool
comparar [] [] = True
comparar [] _ = False
comparar _ [] = False
comparar (x:xs) (y:ys) | (x == y) = comparar xs ys
                       | otherwise = False

-- Inverter a lista
inverter :: [Int] -> [Int]
inverter [x] = [x]
inverter (x:xs) = inverter xs ++ [x]