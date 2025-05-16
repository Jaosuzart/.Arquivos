Algoritmo "BuscaBinaria"

Var
   numeros: vetor[1..10] de inteiro
   i, ini, fim, meio: inteiro
   buscado: inteiro
   encontrado: inteiro // 0 = falso, 1 = verdadeiro

Inicio
   // Vetor ordenado fixo
   numeros[1] := 2
   numeros[2] := 5
   numeros[3] := 8
   numeros[4] := 12
   numeros[5] := 15
   numeros[6] := 19
   numeros[7] := 25
   numeros[8] := 33
   numeros[9] := 40
   numeros[10] := 50

   Escreval("Digite o número que deseja buscar: ")
   Leia(buscado)

   ini := 1
   fim := 10
   encontrado := 0

   Enquanto (ini <= fim) e (encontrado = 0) faca
      meio := (ini + fim) div 2

      Se numeros[meio] = buscado entao
         encontrado := 1
      Senao
         Se buscado < numeros[meio] entao
            fim := meio - 1
         Senao
            ini := meio + 1
         FimSe
      FimSe
   FimEnquanto

   Se encontrado = 1 entao
      Escreval("Número encontrado na posição: ", meio)
   Senao
      Escreval("Número não encontrado.")
   FimSe
FimAlgoritmo
