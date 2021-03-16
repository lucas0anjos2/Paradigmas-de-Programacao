-- Função soma
soma :: Integer -> Integer
soma 0 = 0
soma 1 = 1
soma n = soma(n-1) + n

-- Função fatorial
fatorial 0 = 1
fatorial n = fatorial(n-1)*n

-- Função Fibonacci
fib 0 = 0
fib 1 = 1
fib 2 = 1
fib n = fib(n-2) + fib(n-1)

--Guarda
guarda x | (x == 0) = 0
         | (x == 1) = 1
         | otherwise = -1

-- Variável anonima "_"
my_and :: Bool -> Bool -> Bool
my_and False _ = False
my_and _ False = False
my_and True True = True

-- If else
letra :: Char -> String
letra l = 
          if l >= 'a' && l <= 'z' then "Minusculo"
          else if l >= 'A' && l <= 'Z' then "Maiusculo"
          else "Nao e uma letra do alfbeto"


-- Tuplas
ponto :: (Integer, Integer) -> (Integer, Integer) -> (Integer, Integer)
ponto (a,b) (c,d) = (a+c, b+d)

--Utilizando as variááveis anonimas para acessar os elementos das Tuplas
nome :: (String, Int, String)
nome = ("lucas", 10, "x")
primeiro (x,_,_) = x
segundo (_,y,_) = y
terceiro (_,_,z) = z
