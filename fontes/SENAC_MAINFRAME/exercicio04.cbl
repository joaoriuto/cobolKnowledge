       IDENTIFICATION DIVISION.
       PROGRAM-ID. exercicio04.
      ******************************************************************
      * Author: João Riuto
      * Date: 26/03/21
      * Purpose: Ler 4 numeros,
      *    Calcule o quadrado de cada um
      *     Somar todos e Mostrar o resultados
      ******************************************************************
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  NUM1                               PIC S9(3).
       01  NUM2                               PIC S9(3).
       01  NUM3                               PIC S9(3).
       01  NUM4                               PIC S9(3).
       01  SOMATORIO_NUM                      PIC S9999999.
       01  SOMATORIO_EDIT                     PIC ZZZZZZZ9.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      *    ENTRADA DE DADOS -------------------------------------------
           DISPLAY            'INFORME O PRIMEIRO NUMERO: '.
           ACCEPT              NUM1.
           DISPLAY            'INFORME O PRIMEIRO NUMERO: '.
           ACCEPT              NUM2.
           DISPLAY            'INFORME O PRIMEIRO NUMERO: '.
           ACCEPT              NUM3.
           DISPLAY            'INFORME O PRIMEIRO NUMERO: '.
           ACCEPT              NUM4.

      *    PROCESSAMENTO ----------------------------------------------

           COMPUTE SOMATORIO_NUM = ( (NUM1 * NUM1) + (NUM2 * NUM2) +
                   (NUM3 * NUM3) + (NUM4 * NUM4) ).
           MOVE    SOMATORIO_NUM TO SOMATORIO_EDIT

      *    SAÍDA DE DADOS ---------------------------------------------
           DISPLAY 'SOMATÓRIO DO QUADRADO DOS NUMEROS INFORMADOS: '.
           DISPLAY SOMATORIO_EDIT.
            STOP RUN.
       END PROGRAM exercicio04.
