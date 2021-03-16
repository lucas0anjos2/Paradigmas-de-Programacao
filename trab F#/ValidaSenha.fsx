//Link do problema: https://www.urionlinejudge.com.br/judge/pt/problems/view/2253
//Nível: 4.1
//Integrantes do Grupo: Lucas dos Anjos de Castro, Marçal Henrique Moreira, Gabriel Moura Dias Catharino, Railson Martins da Mata, Filipe Andrade Coelho Moreira

open System
open System.Text.RegularExpressions

let padrao = "(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])\w{6,32}"
let teste1 = "URI Online Judge"
let teste2 = "AbcdEfgh99"
let teste3 = "URIOnlineJudge12"
let teste4 = "URI Online Judge 12"
let teste5 = "Aass9"
let teste6 = "Aassd9"

let ExpressaoRegular padrao entrada =
   let RE = Regex.Match(entrada, padrao) 
   if (RE.Success) then true else false  

let testSpace entrada = 
    let RE = Regex.Match(entrada, "\s")
    if (RE.Success) then false else true
    
let testRegex str = 
    if (ExpressaoRegular padrao str && testSpace str) then printf "senha válida !!! \n" else printf "senha inválida !!! \n"
            
// testando
testRegex teste1
testRegex teste2
testRegex teste3
testRegex teste4
testRegex teste5
testRegex teste6

Console.ReadKey()