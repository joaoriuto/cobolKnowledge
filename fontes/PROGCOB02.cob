       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB02.
      ************************************
      * AREA DE COMENTÁRIOS - REMARKS
      * AUTHOR = JOAO RIUTO
      * OBJETIVO: RECEBER E IMPRIMIR UMA STRING
      * DATA:
      ************************************
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME PICTURE X(20) VALUE SPACES.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           DISPLAY
           'SEJA BEM VINDO: ' WRK-NOME
           END-DISPLAY.
           STOP RUN.
