Algoritmo "BubbleSortNomes"

Var
   nomes: vetor[1..5] de caractere
   i, j: inteiro
   temp: caractere

Inicio
   // Leitura dos nomes
   Para i de 1 ate 5 faca
      Escreva("Digite o nome ", i, ": ")
      Leia(nomes[i])
   FimPara

   // Algoritmo Bubble Sort
   Para i de 1 ate 4 faca
      Para j de 1 ate 5 - i faca
         Se nomes[j] > nomes[j + 1] entao
            temp := nomes[j]
            nomes[j] := nomes[j + 1]
            nomes[j + 1] := temp
         FimSe
      FimPara
   FimPara

   // Exibindo os nomes ordenados
   Escreval("Nomes em ordem alfabética:")
   Para i de 1 ate 5 faca
      Escreval(nomes[i])
   FimPara
FimAlgoritmo
