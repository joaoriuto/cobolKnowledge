       IDENTIFICATION          DIVISION.
       PROGRAM-ID.             AULA22.
      ******************************************************************
      * Author: JOAO RIUTO
      *
      * Purpose: > LER COTAÇÃO DO DOLAR
      *          > LER VALOR EM DOLAR
      *          > CONVERTER VALOR PARA REAL
      *          > MOSTRAR RESULTADO
      ******************************************************************
       ENVIRONMENT             DIVISION.
       CONFIGURATION           SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.

       DATA                    DIVISION.
       FILE                    SECTION.
       WORKING-STORAGE         SECTION.
       77  WRK-COTACAO-DOLAR   PIC 9(8)     VALUE ZEROS.
       77  WRK-RECEBERVALOR    PIC 9(8)     VALUE ZEROS.
       77  WRK-VALORFINAL      PIC 9(8)     VALUE ZEROS.
       77  WRK-VALORMSK        PIC ZZZZZZ99 VALUE ZEROS.
       PROCEDURE               DIVISION.
       MAIN-PROCEDURE.
      ********* ENTRADA DE DADOS

           DISPLAY     "INOFRME A COTACAO DO DOLAR (U$)"
           ACCEPT      WRK-COTACAO-DOLAR FROM CONSOLE.
           DISPLAY     "INFORME O VALOR A SER CONVERTIDO"
           ACCEPT      WRK-RECEBERVALOR  FROM CONSOLE.
      ********* PROCESSAMENTO

           COMPUTE WRK-VALORFINAL = WRK-COTACAO-DOLAR * WRK-RECEBERVALOR.
           MOVE WRK-VALORFINAL TO WRK-VALORMSK.
      ********* SAIDA

           DISPLAY     "QUANTIA A SER CONVERTIDA: " WRK-RECEBERVALOR
           DISPLAY     "VALOR DA COTACAO: " WRK-COTACAO-DOLAR
           DISPLAY     "QUANTIDADE: " WRK-VALORMSK
           END-DISPLAY.
            STOP RUN.
       END PROGRAM             AULA22.
