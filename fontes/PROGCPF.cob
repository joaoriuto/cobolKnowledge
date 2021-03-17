       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCPF.
      ***************************************
      * AREA DE COMENTARIOS -> REMARKS
      * AUTHOR: JOAO RIUTO
      * OBJETIVO: CAPTURAR E FORMATAR UM CPF
      ***************************************

       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NOME     PICTURE A(07) VALUE SPACES.
       77 WRK-CPF      PICTURE 9(11) VALUE ZEROS.
       77 WRK-CPF-MASK PICTURE ZZZ.ZZZ.ZZ9/99.
       PROCEDURE DIVISION.
           ACCEPT WRK-NOME FROM CONSOLE.
           ACCEPT WRK-CPF  FROM CONSOLE.
      ****************************************
      * MOSTRAR DADOS
      ****************************************
       MOVE WRK-CPF TO WRK-CPF-MASK.
           DISPLAY
           "SEJA BEM VINDO, " WRK-NOME
           "CPF: " WRK-CPF-MASK
           END-DISPLAY.
           STOP RUN.
