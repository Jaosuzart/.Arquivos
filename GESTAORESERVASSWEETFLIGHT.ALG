Algoritmo "GestaoReservasSweetFlight"

// ====== Defini��o de Tipo ======
Tipo
   Reserva = Registro
      numeroAviao: Inteiro
      nomePassageiro: Caractere
   FimRegistro
FimTipo

// ====== Declara��o de Vari�veis ======
Var
   avioes        : vetor[1..4] de inteiro
   assentos      : vetor[1..4] de inteiro
   reservas      : vetor[1..20] de Reserva
   totalReservas : inteiro
   opcao, i, num : inteiro
   nome          : caractere
   achou, achouReserva : logico

// ====== In�cio ======
Inicio
   totalReservas <- 0

   Repita
      Escreval("====================================")
      Escreval("           MENU DE OPCOES           ")
      Escreval("====================================")
      Escreval("1. Registrar o n�mero dos avi�es")
      Escreval("2. Registrar o quantitativo de assentos dispon�veis")
      Escreval("3. Reservar passagem a�rea")
      Escreval("4. Realizar consulta por avi�o")
      Escreval("5. Realizar consulta por passageiro")
      Escreval("6. Encerrar")
      Escreva("Digite sua opcao: ")
      Leia(opcao)
      Escreval("")

      Escolha opcao

         // === Registro de avi�es ===
         Caso 1:
            Para i de 1 ate 4 faca
               Escreva("Digite o n�mero do avi�o ", i, ": ")
               Leia(avioes[i])
            FimPara

         // === Registro de assentos ===
         Caso 2:
            Para i de 1 ate 4 faca
               Escreva("Digite a quantidade de assentos para o avi�o ", avioes[i], ": ")
               Leia(assentos[i])
            FimPara

         // === Reserva de passagem ===
         Caso 3:
            Se totalReservas < 20 entao
               Escreval("Avi�es dispon�veis:")
               Para i de 1 ate 4 faca
                  Escreval("- Avi�o ", avioes[i], " | Assentos: ", assentos[i])
               FimPara

               Escreva("Digite o n�mero do avi�o para a reserva: ")
               Leia(num)

               achou <- falso
               Para i de 1 ate 4 faca
                  Se avioes[i] = num entao
                     achou <- verdadeiro

                     Se assentos[i] > 0 entao
                        Escreva("Digite o nome do passageiro: ")
                        Leia(nome)

                        Se comprimento(nome) = 0 entao
                           Escreval("? Nome inv�lido. Tente novamente.")
                        Senao
                           totalReservas <- totalReservas + 1
                           reservas[totalReservas].numeroAviao <- num
                           reservas[totalReservas].nomePassageiro <- nome
                           assentos[i] <- assentos[i] - 1

                           Escreval("? Reserva confirmada com sucesso para ", nome, " no avi�o ", num, "!")
                        FimSe
                     Senao
                        Escreval("? Desculpe, n�o h� assentos dispon�veis para esse avi�o.")
                     FimSe
                  FimSe
               FimPara

               Se nao achou entao
                  Escreval("?? Avi�o n�o encontrado. Os dispon�veis s�o:")
                  Para i de 1 ate 4 faca
                     Escreval("- ", avioes[i])
                  FimPara
               FimSe
            Senao
               Escreval("? Limite de reservas (20) atingido!")
            FimSe

         // === Consulta por n�mero do avi�o ===
         Caso 4:
            Escreva("Digite o n�mero do avi�o para consulta: ")
            Leia(num)

            achou <- falso
            Para i de 1 ate 4 faca
               Se avioes[i] = num entao
                  achou <- verdadeiro
               FimSe
            FimPara

            Se nao achou entao
               Escreval("?? Avi�o n�o encontrado!")
            Senao
               achouReserva <- falso
               Para i de 1 ate totalReservas faca
                  Se reservas[i].numeroAviao = num entao
                     Escreval("?? Passageiro: ", reservas[i].nomePassageiro)
                     achouReserva <- verdadeiro
                  FimSe
               FimPara

               Se nao achouReserva entao
                  Escreval("?? N�o h� reservas para esse avi�o.")
               FimSe
            FimSe

         // === Consulta por nome do passageiro ===
         Caso 5:
            Escreva("Digite o nome do passageiro: ")
            Leia(nome)

            achouReserva <- falso
            Para i de 1 ate totalReservas faca
               Se reservas[i].nomePassageiro = nome entao
                  Escreval("?? Avi�o reservado: ", reservas[i].numeroAviao)
                  achouReserva <- verdadeiro
               FimSe
            FimPara

            Se nao achouReserva entao
               Escreval("?? Nenhuma reserva encontrada para este passageiro.")
            FimSe

         // === Encerramento ===
         Caso 6:
            Escreval("?? Encerrando o sistema. At� a pr�xima viagem!")

         OutroCaso:
            Escreval("? Op��o inv�lida! Tente novamente.")
      FimEscolha

      Escreval("")
   Ate opcao = 6

Fimalgoritmo
