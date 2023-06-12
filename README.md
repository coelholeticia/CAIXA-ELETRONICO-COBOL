# CAIXA-ELETRONICO-COBOL
*Objetivo:* 
1. Depositar.
2. saque.
3. consultar saldo.

*Aprendizado:*
Criação de paragrafos:
``` PROCEDURE DIVISION.
          P001-MENU1.
      * PARAGRAFO CRIADO PARA OPÇÃO DE MENU DO APP.
           DISPLAY "----------------------".
           DISPLAY "-       BANCO        -".
           DISPLAY "----------------------".
           DISPLAY "ESCOLHA UMA OPERACAO.".
           DISPLAY "1- DEPOSITO".
           DISPLAY "2- SAQUE".
           DISPLAY "3- CONSULTAR SALDO".
           DISPLAY "4- SAIR".
 
           
     Aqui foi criado o primeiro paragrafo do programa, que é o seu menu.
     
     ACCEPT:
    transfere dados para um identificador especificado.
     ACCEPT WS-OPCAO.
     
     Aqui ele está capturando uma informação dada pelo o usuário.
     
     EVALUATE:
     à semelhança do verbo IF, permite alterar o fluxo do programa em função dos seus dados.
     Resumindo é como se fosse um switch case em outras linguagens. 
     ```
      EVALUATE WS-OPCAO
               WHEN "1"
                   DISPLAY "----------------------"
                   DISPLAY "-       BANCO        -"
                   DISPLAY "----------------------"
                   DISPLAY "DIGITE O VALOR DO DEPOSITO:"
                   ACCEPT WS-DEPOSITO
                   COMPUTE WS-SALDO = WS-SALDO + WS-DEPOSITO
                   DISPLAY "DEPOSITO EFETIVADO COM SUCESSO"
                   PERFORM P001-MENU1 .... 
   
