Algoritmo "Cadastro e Consulta"
// Disciplina   : [Atividade Pr�tica Modul0 02]
// Professor   : Flavio Mota
// Descri��o   : Cadastro e Consulta
// Autor(a)    : Jo�o de Deus Cavalcante Filho
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
            escreval("Deseja cadastrar outro cliente? sim ou n�o")
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
// Cadastros iniciais de clientes e destinos para o teste da fun��o consulta
// sem a necessidade de primeiro cadastrar clientes. Os novos clientes ser�o
// incluidos a partir da posi��o 06.
   nome[1]<- ("Jo�o")
   nome[2]<-("Maria")
   nome[3]<- ("Jos�")
   nome[4]<- ("Francisco")
   nome[5]<- ("Arnaldo")
   destino[1]<- ("Fortaleza")
   destino[2]<- ("Sobral")
   destino[3]<- ("Juazeiro do Norte")
   destino[4]<- ("Aracati")
   destino[5]<- ("Aquiraz")
   
// Cabe�alho.

   escreval("<-------------------DEVTUR------------------------>")
   escreval("")
   escreval("<-------------------BEM VINDO--------------------->")
   escreval("")
   escreval("<--------------ESCOLHA UMA OP��O------------------>")
   escreval("")

// Estrutura de repeti��o que for�a o usu�rio a escolher umas das op��es.
// Caso n�o escolha nenhuma das op��es a pergunta � repetida at� ser feita uma
// escolha.
   repita
      escreval("<__PARA CADASTRO - 1 __ PARA CONSULTA - 2 __ SAIR - Esc __>")
      leia(o)
      escolha o

// Usu�rio escolhe op��o 1 - estrura de cadastro.
      caso  1
         cadastro

      // Estrutura de repeti��o ap�s o termino do cadastro que permite o usu�rio
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

               escreval("Op��o invalida")
            fimescolha
         ate ((o = 1) ou (o = 2))
         
         
// Usu�rio escolhe op��o 2 - estrura de consulta.
      caso 2
         consulta

        // Estrutura de repeti��o ap�s o termino da consulta que permite o usu�rio
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
               escreval("Op��o invalida")
            fimescolha
         ate ((o = 1) ou (o = 2))

// resposta caso op��o invalida.
      outrocaso

         escreval("Op��o invalida")
      fimescolha
   ate ((o = 1) ou (o = 2))
Fimalgoritmo