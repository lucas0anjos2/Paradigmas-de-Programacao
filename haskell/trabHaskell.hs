-- desafio: https://www.urionlinejudge.com.br/judge/pt/problems/view/2443
-- nivel: 3.3
type Fracao = (Integer, Integer)

denomIguais :: Fracao -> Fracao -> Fracao
denomIguais (a,b) (c,d) = (a+c, b)

denomDif :: Fracao -> Fracao -> Fracao
denomDif (a,b) (c,d) = ((a*d)+(c*b), b*d)

mdc :: Integer -> Integer -> Integer
mdc a b | a < b = mdc b a
        | b == 0 = a
        | otherwise = mdc b (mod a b)

reduzir :: Fracao -> Fracao
reduzir (a, b) = (div a (mdc a b), div b (mdc a b) ) 

somaIrredutivel :: Fracao -> Fracao -> Fracao
somaIrredutivel (1,1) (1,1) = (1,1)
somaIrredutivel (a,b) (c,d) = if (b == d) then reduzir (denomIguais (a,b) (c,d) )
                      else reduzir (denomDif (a,b) (c,d) )

--testes:
f1 = (7,5)
f2 = (3,2)
r1 = somaIrredutivel f1 f2

f3 = (2,3)
f4 = (7,3)
r2 = somaIrredutivel f3 f4

f5 = (8,5)
f6 = (4,3)
r3 = somaIrredutivel f5 f6

f7 = (11,49)
f8 = (27,2)
r4 = somaIrredutivel f7 f8

resultados = [r1, r2, r3, r4]

main = 
    putStrLn $ show resultados
   
