Algoritmo "Atividade prática módulo 2 - Recode Pro"
//Nome: Gabriel Augusto Santana Pereira
//Usando conceitos de programação estruturada (Vetor),
//criar em pseudocódigo um menu para simular um cadastro
// para uma agência de viagens com as seguintes funções:
// cadastro de cliente e cadastro de destino,
// criar também uma consulta para cada estrutura de dados.
Var
// Seção de Declarações das variáveis 
opcaoMenu : caractere
clientes : vetor [0..9] de caractere
idades: vetor[0..9] de inteiro
naturalidades: vetor[0..9] de caractere
profissoes: vetor[0..9] de caractere
destinos : vetor [0..9] de caractere
capitais:vetor[0..9] de caractere
paises:vetor[0..9] de caractere


procedimento mostrarMenu()
inicio
      escreval(" ")
      Escreval("1- Cadastrar Cliente.")
      Escreval("2- Cadastrar Destino.")
      Escreval("3- Pesquisar Cliente.")
      Escreval("4- Pesquisar Destino.")
      Escreval("5- Para Sair.")
      escreval(" ")
      escreval(" ")
      leia(opcaoMenu)
fimprocedimento


procedimento cadastrarCliente()
var
   i : inteiro
inicio

   para i de 0 ate 9 faca
        se clientes[i] = "" entao
           escreval("Nome:")
           leia(clientes[i])
           escreval("Idade:")
           leia(idades[i])
           escreval("Naturalidade:")
           leia(naturalidades[i])
           escreval("Profissão:")
           leia(profissoes[i])
           escreval(" ")
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento



procedimento cadastrarDestino()
var
   i : inteiro
inicio

   para i de 0 ate 9 faca
        se destinos[i] = "" entao
           escreval("Nome do destino:")
           leia(destinos[i])
           escreval("Capital do destino:")
           leia(capitais[i])
           escreval("País do destino:")
           leia(paises[i])
           escreval(" ")
           escreval(" ")
           interrompa
        fimse
   fimpara
fimprocedimento



procedimento pesquisarCliente()
var
   i : inteiro
   nomeAPesquisar : caractere
   indice : inteiro
inicio

   escreval("Informe o nome do cliente a ser achado:")
   leia(nomeAPesquisar)
   
   para i de 0 ate 9 faca
        se clientes[i] = nomeAPesquisar entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Cliente não cadastrado!")
   senao
      escreval("Cliente encontrado na posição: ", indice)
      escreval("Nome do cliente: ", clientes[indice])
      escreval("Idade: ", idades[indice])
      escreval("Naturalidade: ", naturalidades[indice])
      escreval("Profissao: ", profissoes[indice])
      escreval(" ")
      escreval(" ")
   fimse
fimprocedimento



procedimento pesquisarDestino()
var
   i : inteiro
   nomeAPesquisar : caractere
   indice : inteiro
inicio

   escreval("Informe o nome do destino a ser achado:")
   leia(nomeAPesquisar)

   para i de 0 ate 9 faca
        se destinos[i] = nomeAPesquisar entao
           indice <- i
           interrompa
        fimse
   fimpara
   se indice = -1 entao
      escreval("Destino não cadastrado!")
   senao
      escreval("Destino encontrado na posição: ", indice)
      escreval("Nome do Destino: ", destinos[indice])
      escreval("Capital do Destino: ", capitais[indice])
      escreval("País do Destino: ", paises[indice])
      escreval(" ")
      escreval(" ")
   fimse
fimprocedimento



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 
escreval("Bem vindo(a)a nossa agência de viagens!")
repita
      mostrarMenu()
      escolha opcaoMenu
          caso "1"
               cadastrarCliente()
          caso "2"
               cadastrarDestino()
          caso "3"
               pesquisarCliente()
          caso "4"
               pesquisarDestino()
          outrocaso
             escreval("Opcao inválida")
     fimescolha
    ate opcaoMenu = "5"

Fimalgoritmo