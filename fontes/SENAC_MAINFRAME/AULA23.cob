       IDENTIFICATION          DIVISION.
       PROGRAM-ID.             AULA22.
      ******************************************************************
      * Author: JOAO RIUTO
      *
      * Purpose: > RECEBER 4 NUMEROS
      *          > CALCULAR  O QUADRADO DE CADA
      *          > SOMAR TODOS
      *          > MOSTRAR RESULTADO
      ******************************************************************
       ENVIRONMENT             DIVISION.
       CONFIGURATION           SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                     DIVISION.
       FILE                     SECTION.
       WORKING-STORAGE          SECTION.
       01  NUMEROS.
           02 N1      PIC 9(02)    VALUE ZEROS.
           02 N2      PIC 9(02)    VALUE ZEROS.
           02 N3      PIC 9(02)    VALUE ZEROS.
           02 N4      PIC 9(02)    VALUE ZEROS.

       77  SOMA       PIC 9(05)V99 VALUE ZEROS.
       77  RESLT-MASK PIC Z9       VALUE ZEROS.
       PROCEDURE               DIVISION.
       MAIN-PROCEDURE.
      ********* ENTRADA DE DADOS
           DISPLAY "----------------------------"
           DISPLAY "INFORME O PRIMEIRO NUMERO: "
             ACCEPT  N1 FROM CONSOLE.

           DISPLAY "----------------------------"
           DISPLAY "INFORME O SEGUNDO NUMERO: "
             ACCEPT  N2 FROM CONSOLE.

           DISPLAY "----------------------------"
           DISPLAY "INFORME O TERCEIRO NUMERO: "
             ACCEPT  N3 FROM CONSOLE.

           DISPLAY "----------------------------"
           DISPLAY "INFORME O QUARTO NUMERO: "
             ACCEPT  N4 FROM CONSOLE.

      ********* PROCESSAMENTO
           COMPUTE SOMA = (N1 * N1) + (N2 * N2) + (N3 * N3) + (N4 * N4).
           MOVE    SOMA TO RESLT-MASK.

      ********* SAIDA
           DISPLAY "------------------------"
           DISPLAY "A SOMA DO QUADRADO DE TODOS OS NUMEROS: " RESLT-MASK.
           END-DISPLAY.
            STOP RUN.
       END PROGRAM             AULA22.
