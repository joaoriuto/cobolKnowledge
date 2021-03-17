       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB05.
      *************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: JOAO RIUTO
      * OBJETIVO: REALIZAR OPERACAO ARITMETICA
      *************************************

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02) VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02) VALUE ZEROS.
       77 WRK-RESUL    PIC 9(04) VALUE ZEROS.
       77 WRK-RESULF   PIC ZZ99  VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT    WRK-NUM1 FROM CONSOLE.
           ACCEPT    WRK-NUM2 FROM CONSOLE.

      ********************** SOMA *****************************
           ADD       WRK-NUM1 WRK-NUM2 TO WRK-RESUL.
           MOVE      WRK-RESUL TO WRK-RESULF.
           DISPLAY '========================================='
           DISPLAY   WRK-NUM1 ' + ' WRK-NUM2 ' : '  WRK-RESULF
           END-DISPLAY.

      *********************** SUBTRACAO ************************
           SUBTRACT  WRK-NUM1  FROM WRK-NUM2 GIVING WRK-RESUL.
           MOVE      WRK-RESUL TO   WRK-RESULF.
           DISPLAY '========================================='
           DISPLAY   WRK-NUM1 ' - ' WRK-NUM2 ' : '  WRK-RESULF
           END-DISPLAY.

      *********************** DIVISAO **************************
           DIVIDE    WRK-NUM1  BY WRK-NUM2 GIVING   WRK-RESUL.
           MOVE      WRK-RESUL TO WRK-RESULF.
           DISPLAY '========================================='
           DISPLAY   WRK-NUM1 ' / ' WRK-NUM2 ' : '  WRK-RESULF
           END-DISPLAY.

      *********************** MULTIPLICACAO ********************
           MULTIPLY  WRK-NUM1  BY WRK-NUM2 GIVING   WRK-RESUL.
           MOVE      WRK-RESUL TO WRK-RESULF.
           DISPLAY '========================================='
           DISPLAY   WRK-NUM1 ' * ' WRK-NUM2 ' : '  WRK-RESULF
           END-DISPLAY.

      *********************** COMPUTE **************************
           COMPUTE   WRK-RESUL = (WRK-NUM1 + WRK-NUM2) / 2.
           MOVE      WRK-RESUL TO WRK-RESULF.
           DISPLAY '=========================================='
           DISPLAY   'MEDIA '     WRK-RESULF
           END-DISPLAY.
           STOP RUN.
