algoritmo "media_alunos"
var
 nota, soma: real
 quantidade, i: inteiro
 media: real
inicio
 soma := 0
 quantidade := 0
 escreva("Digite a quantidade de alunos: ")
 leia(quantidade)
 para i de 1 ate quantidade faca
 escreva("Digite a nota do aluno ", i, ": ")
 leia(nota)
 soma := soma + nota
 fimpara
 media := soma / quantidade
 escreva("A média das notas é: ", media)
Fimalgoritmo
