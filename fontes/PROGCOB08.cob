       IDENTIFICATION           DIVISION.
       PROGRAM-ID.              PROGCOB08.
       ENVIRONMENT              DIVISION.
       CONFIGURATION            SECTION.
      * SPECIAL-NAMES.
      *     DECIMAL-POINT IS COMMA.
       DATA                     DIVISION.
           WORKING-STORAGE      SECTION.
       77  WRK-NOTA1 PIC  9(02) VALUE ZEROS.
       77  WRK-NOTA2 PIC  9(02) VALUE ZEROS.
       77  WRK-MEDIA PIC  9(03) VALUE ZEROS.
       77  WRK-MASK  PIC  Z99   VALUE ZEROS.
       PROCEDURE                DIVISION.
       MAIN-PROCEDURE.
           ACCEPT     WRK-NOTA1 FROM CONSOLE.
           ACCEPT     WRK-NOTA2 FROM CONSOLE.

           COMPUTE    WRK-MEDIA = (WRK-NOTA1 + WRK-NOTA2) / 2.
           MOVE       WRK-MEDIA TO WRK-MASK.
           DISPLAY    'MEDIA: '    WRK-MASK
           END-DISPLAY.

           EVALUATE WRK-MEDIA
             WHEN 10
                  DISPLAY 'APROVADO COM BONUS'
             WHEN 6 THRU 9
                  DISPLAY 'APROVADO'
             WHEN 2 THRU 5
                  DISPLAY 'RECUPERACAO'
             WHEN OTHER
                  DISPLAY 'REPROVADO'
           END-EVALUATE.

       STOP RUN.
