
      * Author: LETÍCIA
      *                         CAIXA ELETRONICO
      *-----------------------------------------------------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CAIXA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        77 WS-OPCAO PIC X(2).
        77 WS-SALDO PIC 9(10)V99 VALUE ZERO.
        77 WS-DEPOSITO PIC 9(10)V99 VALUE ZERO.
        77 WS-SAQUE PIC 9(10)V99 VALUE ZERO.
       PROCEDURE DIVISION.
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

           ACCEPT WS-OPCAO.
      * EVALUATE É TIPO UM SWITCH CASE ELE VERIFICA UMA CONDIÇÃO EX: A BAIXO. OB
           EVALUATE WS-OPCAO
               WHEN "1"
                   DISPLAY "----------------------"
                   DISPLAY "-       BANCO        -"
                   DISPLAY "----------------------"
                   DISPLAY "DIGITE O VALOR DO DEPOSITO:"
                   ACCEPT WS-DEPOSITO
                   COMPUTE WS-SALDO = WS-SALDO + WS-DEPOSITO
                   DISPLAY "DEPOSITO EFETIVADO COM SUCESSO"
                   PERFORM P001-MENU1
      * PERFORM P001-MENU1 VOLTA PARA O PARAGRAFO MENU
               WHEN "2"
                   DISPLAY "----------------------"
                   DISPLAY "-       BANCO        -"
                   DISPLAY "----------------------"
                   DISPLAY "DIGITE O VALOR DO SEU SAQUE:"
                   ACCEPT WS-SAQUE
                   IF WS-SAQUE > WS-SALDO
                   THEN
                       DISPLAY "SALDO INSUFICIENTE."
                   ELSE
                       COMPUTE WS-SALDO = WS-SALDO - WS-SAQUE
                   END-IF
                   PERFORM P001-MENU1
                WHEN "3"
                   DISPLAY "----------------------"
                   DISPLAY "-       BANCO        -"
                   DISPLAY "----------------------"
                   DISPLAY "O SALDO DISPONIVEL É DE: " WS-SALDO
                   PERFORM P001-MENU1
                WHEN "4"
                   DISPLAY "----------------------"
                   DISPLAY "-       BANCO        -"
                   DISPLAY "----------------------"
                   DISPLAY "OBRIGADO, VOLTE SEMPRE."
                   CONTINUE
                WHEN OTHER
                   PERFORM P001-MENU1
           END-EVALUATE.

           STOP RUN.
       END PROGRAM CAIXA.
