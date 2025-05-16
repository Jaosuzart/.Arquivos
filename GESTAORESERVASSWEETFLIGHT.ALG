Algoritmo "GestaoReservasSweetFlight"

// ====== Definição de Tipo ======
Tipo
   Reserva = Registro
      numeroAviao: Inteiro
      nomePassageiro: Caractere
   FimRegistro
FimTipo

// ====== Declaração de Variáveis ======
Var
   avioes        : vetor[1..4] de inteiro
   assentos      : vetor[1..4] de inteiro
   reservas      : vetor[1..20] de Reserva
   totalReservas : inteiro
   opcao, i, num : inteiro
   nome          : caractere
   achou, achouReserva : logico

// ====== Início ======
Inicio
   totalReservas <- 0

   Repita
      Escreval("====================================")
      Escreval("           MENU DE OPCOES           ")
      Escreval("====================================")
      Escreval("1. Registrar o número dos aviões")
      Escreval("2. Registrar o quantitativo de assentos disponíveis")
      Escreval("3. Reservar passagem aérea")
      Escreval("4. Realizar consulta por avião")
      Escreval("5. Realizar consulta por passageiro")
      Escreval("6. Encerrar")
      Escreva("Digite sua opcao: ")
      Leia(opcao)
      Escreval("")

      Escolha opcao

         // === Registro de aviões ===
         Caso 1:
            Para i de 1 ate 4 faca
               Escreva("Digite o número do avião ", i, ": ")
               Leia(avioes[i])
            FimPara

         // === Registro de assentos ===
         Caso 2:
            Para i de 1 ate 4 faca
               Escreva("Digite a quantidade de assentos para o avião ", avioes[i], ": ")
               Leia(assentos[i])
            FimPara

         // === Reserva de passagem ===
         Caso 3:
            Se totalReservas < 20 entao
               Escreval("Aviões disponíveis:")
               Para i de 1 ate 4 faca
                  Escreval("- Avião ", avioes[i], " | Assentos: ", assentos[i])
               FimPara

               Escreva("Digite o número do avião para a reserva: ")
               Leia(num)

               achou <- falso
               Para i de 1 ate 4 faca
                  Se avioes[i] = num entao
                     achou <- verdadeiro

                     Se assentos[i] > 0 entao
                        Escreva("Digite o nome do passageiro: ")
                        Leia(nome)

                        Se comprimento(nome) = 0 entao
                           Escreval("? Nome inválido. Tente novamente.")
                        Senao
                           totalReservas <- totalReservas + 1
                           reservas[totalReservas].numeroAviao <- num
                           reservas[totalReservas].nomePassageiro <- nome
                           assentos[i] <- assentos[i] - 1

                           Escreval("? Reserva confirmada com sucesso para ", nome, " no avião ", num, "!")
                        FimSe
                     Senao
                        Escreval("? Desculpe, não há assentos disponíveis para esse avião.")
                     FimSe
                  FimSe
               FimPara

               Se nao achou entao
                  Escreval("?? Avião não encontrado. Os disponíveis são:")
                  Para i de 1 ate 4 faca
                     Escreval("- ", avioes[i])
                  FimPara
               FimSe
            Senao
               Escreval("? Limite de reservas (20) atingido!")
            FimSe

         // === Consulta por número do avião ===
         Caso 4:
            Escreva("Digite o número do avião para consulta: ")
            Leia(num)

            achou <- falso
            Para i de 1 ate 4 faca
               Se avioes[i] = num entao
                  achou <- verdadeiro
               FimSe
            FimPara

            Se nao achou entao
               Escreval("?? Avião não encontrado!")
            Senao
               achouReserva <- falso
               Para i de 1 ate totalReservas faca
                  Se reservas[i].numeroAviao = num entao
                     Escreval("?? Passageiro: ", reservas[i].nomePassageiro)
                     achouReserva <- verdadeiro
                  FimSe
               FimPara

               Se nao achouReserva entao
                  Escreval("?? Não há reservas para esse avião.")
               FimSe
            FimSe

         // === Consulta por nome do passageiro ===
         Caso 5:
            Escreva("Digite o nome do passageiro: ")
            Leia(nome)

            achouReserva <- falso
            Para i de 1 ate totalReservas faca
               Se reservas[i].nomePassageiro = nome entao
                  Escreval("?? Avião reservado: ", reservas[i].numeroAviao)
                  achouReserva <- verdadeiro
               FimSe
            FimPara

            Se nao achouReserva entao
               Escreval("?? Nenhuma reserva encontrada para este passageiro.")
            FimSe

         // === Encerramento ===
         Caso 6:
            Escreval("?? Encerrando o sistema. Até a próxima viagem!")

         OutroCaso:
            Escreval("? Opção inválida! Tente novamente.")
      FimEscolha

      Escreval("")
   Ate opcao = 6

Fimalgoritmo
