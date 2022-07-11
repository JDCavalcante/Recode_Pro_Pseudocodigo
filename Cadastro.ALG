Algoritmo "Cadastro e Consulta"
// Disciplina   : [Atividade Prática Modul0 02]
// Professor   : Flavio Mota
// Descrição   : Cadastro e Consulta
// Autor(a)    : João de Deus Cavalcante Filho
// Data atual  : 19/06/2022


// Procedimento Cadastro utilizado para cadastrar novos clientes e destinos.
procedimento cadastro
inicio
   op <- "sim"
   para l de 6 ate 10 faca
      se op = "sim" entao
         enquanto op = "sim" faca
            escreval("Digite o nome do cliente: ")
            leia (nome[l])
            escreval("Digite o destino: ")
            leia (destino[l])
            limpatela
            escreval("<---Cliente e Destino cadastrados com sucesso!--->")
            escreval("")
            escreval("Deseja cadastrar outro cliente? sim ou não")
            leia(op)
         fimenquanto
      fimse
   fimpara
fimprocedimento


// Procedimento Consulta utilizado para consultar clientes e destinos.
procedimento consulta
inicio
   para l de 1 ate 10 faca
      se nome[l] <> "" entao
         escreval("Cliente: ",nome[l], ". / Destino: ", destino[l],"!")
         escreval("")
      fimse
   fimpara
fimprocedimento

// Variaveis Globais.
var
  l,  n, o: inteiro
   nome, destino : vetor[1..10] de caracter

   op, x, f, v : caracter



Inicio
// Cadastros iniciais de clientes e destinos para o teste da função consulta
// sem a necessidade de primeiro cadastrar clientes. Os novos clientes serão
// incluidos a partir da posição 06.
   nome[1]<- ("João")
   nome[2]<-("Maria")
   nome[3]<- ("José")
   nome[4]<- ("Francisco")
   nome[5]<- ("Arnaldo")
   destino[1]<- ("Fortaleza")
   destino[2]<- ("Sobral")
   destino[3]<- ("Juazeiro do Norte")
   destino[4]<- ("Aracati")
   destino[5]<- ("Aquiraz")
   
// Cabeçalho.

   escreval("<-------------------DEVTUR------------------------>")
   escreval("")
   escreval("<-------------------BEM VINDO--------------------->")
   escreval("")
   escreval("<--------------ESCOLHA UMA OPÇÃO------------------>")
   escreval("")

// Estrutura de repetição que força o usuário a escolher umas das opções.
// Caso não escolha nenhuma das opções a pergunta é repetida até ser feita uma
// escolha.
   repita
      escreval("<__PARA CADASTRO - 1 __ PARA CONSULTA - 2 __ SAIR - Esc __>")
      leia(o)
      escolha o

// Usuário escolhe opção 1 - estrura de cadastro.
      caso  1
         cadastro

      // Estrutura de repetição após o termino do cadastro que permite o usuário
      // fazer consulta ou sair do sistema.
         repita
            escreval("PARA CADASTRO - 1 , PARA CONSULTA - 2, SAIR - Esc ")
            leia(o)
            escolha o
            caso  1
               cadastro
            caso 2
               consulta
            outrocaso

               escreval("Opção invalida")
            fimescolha
         ate ((o = 1) ou (o = 2))
         
         
// Usuário escolhe opção 2 - estrura de consulta.
      caso 2
         consulta

        // Estrutura de repetição após o termino da consulta que permite o usuário
      // fazer novos cadastros ou sair do sistema.
         repita
            escreval("PARA CADASTRO - 1 , PARA CONSULTA - 2, SAIR - Esc ")
            leia(o)
            escolha o
            caso  1
               cadastro
            caso 2
               consulta
            outrocaso
               escreval("Opção invalida")
            fimescolha
         ate ((o = 1) ou (o = 2))

// resposta caso opção invalida.
      outrocaso

         escreval("Opção invalida")
      fimescolha
   ate ((o = 1) ou (o = 2))
Fimalgoritmo