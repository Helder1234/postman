Configurar ambiente para automação WEB
Instalação e configuração, para executar testes de Web, utilizando WebDriverIO com Cucumber.

Executar os seguintes passos:

Instalar Java SE Development Kit 8 ou >

    $ https://www.oracle.com/java/technologies/javase-jdk11-downloads.html
Instalar NodeJS

    $ https://nodejs.org/en/download/ 
Instalar Wdio

    $ npm i --save-dev @wdio/cli
Clonar o projeto no Mac

    $ git clone <url-do_repositorio-do-git>    
Intalar as dependencias

    $ npm install
Para executar o projeto no Mac

    Executa um scenario com ambiente especifico 
    $ ENVIRONMENT=<environment> npm run local -- --spec features/<scenaro>.feature

    Executa bateria de testes
    $ npm run <environment>



















## Instalação

  Instalar Postman
  ```
  https://www.getpostman.com/  

  ```
  Newman
  ```
    npm install newman

  ```
  Importar a colletion.
  Importar ambientes Prod e QA
  Importar arquivo com .hbs

## Usando via App
  Para executar a colletion, clicar em Runner selecionar a colletion, podendo executar todas ou somente uma request,
  selecionar o ambiente inserir quantas vezes quer que realize os testes, clicar em Run.

## Executando via terminal
  ```Deverá ter instalado o newman
      Entrar na diretorio que está a colletion
      Comandos para executar:

      Prod:
      newman run ScupSocial.postman_collection.json -e Prod.postman_environment.json

      QA: 
      newman run ScupSocial.postman_collection.json -e QA.postman_environment.json
  ```

## Gerando reports 
  ```Comando para gerar report

    newman run -e Prod.postman_environment.json --reporters cli,html --reporter-html-template ./postman-report.hbs --reporter-html-export my_report.html ScupSocial.postman_collection.json

  ```
