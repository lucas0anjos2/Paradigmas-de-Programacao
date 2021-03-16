get_menor :: [Int] -> Int
get_menor [x] = x
get_menor (x:xs) | (x < get_menor xs) = x
                 | otherwise = get_menor xs

remove_menor :: [Int] -> [Int]
remove_menor [] = []
remove_menor (x:xs) | (x == get_menor(x:xs)) = xs 
                    | otherwise = (x:remove_menor xs)  

ordena_auxiliar :: [Int] -> [Int] -> [Int]
ordena_auxiliar lista [] = lista
ordena_auxiliar lista (x:xs) = ordena_auxiliar(lista++[get_menor(x:xs)]) (remove_menor(x:xs))


ordena :: [Int] -> [Int]
ordena [] = []
ordena lista = ordena_auxiliar [] lista