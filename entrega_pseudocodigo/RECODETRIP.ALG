Algoritmo "recodetrip"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Flavio Mota
// Descrição   : menu para simular um cadastro para uma agência de viagens, cadastra clientes e destinos e faz consultas
// Autor(a)    : Thalles Sampaio
// Data atual  : 17/07/2023
Tipo
   dadosRegistro = registro
      nome : caracter
      cpf : caracter
      pais : caracter
      cidade : caracter
   fimregistro

Var
   // Seção de Declarações das variáveis
   i_cadCliente,i_cadDestino:inteiro //contadores
   opcao:inteiro // verifica a funçao do programa escolhida pelo usuario e da opçao de encerrar o programa
   Clientes: vetor [1..100] de dadosRegistro  // VETOR QUE ARMAZENA DADOS DO CLIENTE
   Destinos: vetor [1..100] de dadosRegistro  // VETOR QUE ARMAZENA DADOS DE DESTINO

   //FUNCOES DO PROGRAMA
funcao cadastroClienteNome ():caracter
var
   nome:caracter // em todas as funçoes de cadastro, existe uma variavel dentro da funçao pra ler o que o usuario digitar
inicio
   escreva("Digite o nome do cliente: ")
   leia(nome)
   retorne nome //e retorna o q o usuario digitou para o vetor escolhido
fimfuncao

funcao cadastroClienteCpf ():caracter
var
   cpf: caracter
inicio
   escreva("Digite o CPF: ")
   leia(cpf)
   retorne cpf
fimfuncao

funcao cadastroDestinoPais ():caracter
var
   pais: caracter
inicio
   escreva("Digite o pais de destino: ")
   leia(pais)
   retorne pais
fimfuncao

funcao cadastroDestinoCidade ():caracter
var
   cidade: caracter
inicio
   escreva("Digite a cidade de destino: ")
   leia(cidade)
   retorne cidade
fimfuncao

//PROCEDIMENTOS DO PROGRAMA

procedimento consultaClientes()
var
   i_consultaCliente:inteiro //Contador
   consulta:caracter //le o que o usuario deseja buscar
inicio
   escreva("Digite o nome do usuario que deseja consultar: ")
   leia(consulta)
   //compara o que o usuario digitou com todas as posicoes do vetor
   para i_consultaCliente de 1 ate 100 faca
      se (Clientes[i_consultaCliente].nome) = consulta entao
         escreval("Cliente: ",Clientes[i_consultaCliente].nome)   //se for compativel com alguma das 100 posiçoes
         escreval("CPF: ", Clientes[i_consultaCliente].cpf)       //retorna os dados buscados
      fimse
   fimpara
fimprocedimento

procedimento consultaDestinos()
var
   i_consultaDestino:inteiro // contador
   consultaDestino:caracter //faz a mesma coisa que o procedimento de cima, so que vai buscar os dadods do vetor Destinos
inicio
   escreva("Digite o pais que deseja consulta: ")
   leia(consultaDestino)
   para i_consultaDestino  de 1 ate 100 faca
      se (Destinos[i_consultaDestino].pais) = consultaDestino entao
         escreval("PAIS DE DESTINO: ",Destinos[i_consultaDestino].pais)
         escreval("CIDADE DE DESTINO: ",Destinos[i_consultaDestino].cidade)
      fimse
   fimpara
fimprocedimento


procedimento menuSelecao() //introduz uma tela com as opçoes do programa
inicio

   escreval("------------------------------------------------------------------")
   escreval("                  * R E C O D E   T R I P *                       ")
   escreval("------------------------------------------------------------------")
   escreval("                 |  1 - CADASTRO CLIENTES  |                      ")
   escreval("                 |  2 - CADASTRO DESTINOS  |                      ")
   escreval("                 |  3 - CONSULTA CLIENTES  |                      ")
   escreval("                 |  4 - CONSULTA DESTINOS  |                      ")
   escreval("                 |  5 -       SAIR         |                      ")
   escreval("------------------------------------------------------------------")
fimprocedimento


Inicio
   //Aqui foi utilizada uma variavel pra ler a opçao do usuario, o que ele quer fazer no programa
   //Dentro de um repita para que o programa seja utilizado ate o usuario nao querer mais
   //e selecionar a opcao 5 SAIR
   repita
      menuSelecao()
      leia(opcao)

      escolha opcao //estrutura de decisao escolha pra executar as funcoes do programa de acordo com a opcao escolhida pelo usuario
      caso 1
         limpatela
         i_cadCliente <- i_cadCliente + 1  //contador para armazenar os dados em ordem no vetor
         Clientes[i_cadCliente].nome <- cadastroClienteNome()    //vetor recebendo os dados retornados pelas funcoes
         Clientes[i_cadCliente].cpf <- cadastroClienteCpf()



      caso 2
         limpatela
         i_cadDestino <- i_cadDestino + 1
         Destinos[i_cadDestino].pais <- cadastroDestinoPais()
         Destinos[i_cadDestino].cidade <- cadastroDestinoCidade()



      caso 3
         limpatela
         consultaClientes() //chamada dos procedimentos



      caso 4
         limpatela
         consultaDestinos()  //chamada dos procedimentos



      caso 5
         limpatela
         escreval("------------------------------------------------------------------")
         escreval("                  * R E C O D E   T R I P *                       ")
         escreval("------------------------------------------------------------------")
         escreval("                    OBRIGADO POR UTILIZAR                         ")
         escreval("------------------------------------------------------------------")



      outrocaso
         limpatela
         escreval("OPCAO SELECIONADA INVALIDA")
      fimescolha

   ate opcao = 5

Fimalgoritmo