       IDENTIFICATION        DIVISION.
       PROGRAM-ID.           PROGCOB07.
      ****************************************************************
      * AREA DE COMENTARIOS - REMARKS                                *
      * AUTHOR: JOAO RIUTO                                           *
      * OBJETIVO: RECEBER 02 NOTAS, MEDIA E IMPRIMIR                 *
      *           USAR COMANDOS IF / ELSE                            *
      ****************************************************************
       ENVIRONMENT           DIVISION.
       CONFIGURATION         SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA                  DIVISION.
       WORKING-STORAGE       SECTION.
       77  WRK-NOTA1         PIC 9(02)  VALUE ZEROS.
       77  WRK-NOTA2         PIC 9(02)  VALUE ZEROS.
       77  WRK-MEDIA         PIC 9(02)  VALUE ZEROS.
       77  WRK-MEDIAFN       PIC Z9     VALUE ZEROS.
       PROCEDURE             DIVISION.
       MAIN-PROCEDURE.
           ACCEPT   WRK-NOTA1  FROM CONSOLE.
           ACCEPT   WRK-NOTA2  FROM CONSOLE.

           COMPUTE  WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.

           IF   WRK-MEDIA <  2 THEN
                 DISPLAY   'STATUS: REPROVADO!'
           ELSE
             IF WRK-MEDIA >= 6 THEN
                 DISPLAY   'STATUS: APROVADO!'
               ELSE
                 DISPLAY   'STATUS: RECUPERAÇÃO'
             END-IF
           END-IF.

           MOVE WRK-MEDIA TO WRK-MEDIAFN.
               DISPLAY   'PRIMEIRA NOTA:  '  WRK-NOTA1
               DISPLAY   'SEGUNDA  NOTA:  '  WRK-NOTA2
               DISPLAY   'MEDIA FINAL:    '  WRK-MEDIAFN
           END-DISPLAY.
       STOP RUN.
