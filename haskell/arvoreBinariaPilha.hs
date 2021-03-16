data ArvBin = Nulo | No Int ArvBin ArvBin

arv :: ArvBin
arv = (No 1 
          (No 2
              (No 4 Nulo Nulo) (No 5 Nulo Nulo))
          (No 3
              (No 6 Nulo Nulo) Nulo) )

pre_ordem :: ArvBin -> [Int]
pre_ordem Nulo = [ ] 
pre_ordem (No n esq dir) =  [n] ++ (pre_ordem esq) ++ (pre_ordem dir)

em_ordem :: ArvBin -> [Int]
em_ordem Nulo = [ ] 
em_ordem (No n esq dir) = (em_ordem esq) ++ [n] ++ (em_ordem dir)

pos_ordem :: ArvBin -> [Int]
pos_ordem Nulo = [ ]
pos_ordem (No n esq dir) = (pos_ordem esq) ++ (pos_ordem dir) ++ [n]


--Pilha
push :: [Integer] -> Integer -> [Integer]
push p n = p ++ [n] 

ultimo :: [Integer] -> Integer
ultimo [x] = x
ultimo (x:xs) =  ultimo xs  


pop :: [Integer] -> [Integer]
pop [] = error "Pilha Vazia"
pop [n] = []
pop (x:xs) | (x == ultimo (x:xs)) = xs
           | otherwise = (x:pop xs)

is_empty :: [Int] -> Bool
is_empty [] = True
is_empty _ = False
