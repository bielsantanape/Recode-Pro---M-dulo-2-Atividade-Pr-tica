Algoritmo "Atividade pr�tica m�dulo 2 - Recode Pro"
//Nome: Gabriel Augusto Santana Pereira
//Usando conceitos de programa��o estruturada (Vetor),
//criar em pseudoc�digo um menu para simular um cadastro
// para uma ag�ncia de viagens com as seguintes fun��es:
// cadastro de cliente e cadastro de destino,
// criar tamb�m uma consulta para cada estrutura de dados.
Var
// Se��o de Declara��es das vari�veis 
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
           escreval("Profiss�o:")
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
           escreval("Pa�s do destino:")
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
      escreval("Cliente n�o cadastrado!")
   senao
      escreval("Cliente encontrado na posi��o: ", indice)
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
      escreval("Destino n�o cadastrado!")
   senao
      escreval("Destino encontrado na posi��o: ", indice)
      escreval("Nome do Destino: ", destinos[indice])
      escreval("Capital do Destino: ", capitais[indice])
      escreval("Pa�s do Destino: ", paises[indice])
      escreval(" ")
      escreval(" ")
   fimse
fimprocedimento



Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
escreval("Bem vindo(a)a nossa ag�ncia de viagens!")
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
             escreval("Opcao inv�lida")
     fimescolha
    ate opcaoMenu = "5"

Fimalgoritmo