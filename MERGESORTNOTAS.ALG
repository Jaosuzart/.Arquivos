Algoritmo "MergeSortNotas"

Var
   notas: vetor[1..10] de real
   i: inteiro

Procedimento merge(ini, mei, fim: inteiro)
Var
   temp: vetor[1..10] de real
   i, j, k: inteiro
Inicio
   i := ini
   j := mei + 1
   k := ini

   Enquanto (i <= mei) e (j <= fim) faca
      Se notas[i] <= notas[j] entao
         temp[k] := notas[i]
         i := i + 1
      Senao
         temp[k] := notas[j]
         j := j + 1
      FimSe
      k := k + 1
   FimEnquanto

   Enquanto (i <= mei) faca
      temp[k] := notas[i]
      i := i + 1
      k := k + 1
   FimEnquanto

   Enquanto (j <= fim) faca
      temp[k] := notas[j]
      j := j + 1
      k := k + 1
   FimEnquanto

   Para i de ini ate fim faca
      notas[i] := temp[i]
   FimPara
FimProcedimento

Procedimento merge_sort(ini, fim: inteiro)
Var
   mei: inteiro
Inicio
   Se ini < fim entao
      mei := (ini + fim) div 2
      merge_sort(ini, mei)
      merge_sort(mei + 1, fim)
      merge(ini, mei, fim)
   FimSe
FimProcedimento

Inicio
   Para i de 1 ate 10 faca
      Escreva("Digite a nota do aluno ", i, ": ")
      Leia(notas[i])
   FimPara

   merge_sort(1, 10)

   Escreval("Notas ordenadas:")
   Para i de 1 ate 10 faca
      Escreval(notas[i])
   FimPara
FimAlgoritmo
