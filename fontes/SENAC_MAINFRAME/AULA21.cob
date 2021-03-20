      ******************************************************************
      * Author: JOAO RIUTO
      *
      * Purpose: SOLICITAR UM NOME E EMITIR A MENSAGEM "MUITO PRAZER XXX"
      *          SEJA BEM-VINDO!.
      ******************************************************************
       IDENTIFICATION          DIVISION.
       PROGRAM-ID.             AULA21.
       DATA                    DIVISION.
       FILE                    SECTION.
       WORKING-STORAGE         SECTION.
           77 NOME             PICTURE X(10).
       PROCEDURE               DIVISION.
       MAIN-PROCEDURE.
      ********* ENTRADA DE DADOS
           DISPLAY "---------------------------------------"
           DISPLAY "INFORME SEU NOME: "
           END-DISPLAY.
               ACCEPT NOME
               END-ACCEPT.

            DISPLAY "MUITO PRAZER, " NOME "!"
            DISPLAY "SEJA BEM-VINDO!"
            STOP RUN.
       END PROGRAM             AULA21.
