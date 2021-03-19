       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOB06.
      *************************************
      * AREA DE COMENTARIOS - REMARKS
      * AUTHOR: JOAO RIUTO
      * OBJETIVO: USO DO DOS SINAIS + & -
      *************************************

       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       77 WRK-NUM1     PIC 9(02)  VALUE ZEROS.
       77 WRK-NUM2     PIC 9(02)  VALUE ZEROS.
       77 WRK-RESUL    PIC S9(04) VALUE ZEROS.
       77 WRK-RESULF   PIC -ZZ99  VALUE ZEROS.
       PROCEDURE DIVISION.
           ACCEPT    WRK-NUM1 FROM CONSOLE.
           ACCEPT    WRK-NUM2 FROM CONSOLE.

      *********************** SUBTRACAO ************************
           SUBTRACT  WRK-NUM2  FROM WRK-NUM1 GIVING WRK-RESUL.
           MOVE      WRK-RESUL TO   WRK-RESULF.
           DISPLAY '========================================='
           DISPLAY   WRK-NUM1 ' - ' WRK-NUM2 ' : '  WRK-RESULF
           END-DISPLAY.
           STOP RUN.
