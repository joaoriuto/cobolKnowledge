       IDENTIFICATION    DIVISION.
       PROGRAM-ID.       PROGVENDAS.
      ****************************************************************
      * AREA DE COMENTARIOS - REMARKS                                *
      * AUTHOR: JOAO RIUTO                                           *
      * OBJETIVO: RECEBER VALORES, IMPRIMIR MÉDIA E FORMATAR COM     *
      * MÁSCARAS, EXIBINDO CIFRÃO, PONTOS E CASAS DECIMAIS.          *
      ****************************************************************

       ENVIRONMENT       DIVISION.
       CONFIGURATION     SECTION.
       SPECIAL-NAMES.
           DECIMAL-POINT IS COMMA.
       DATA              DIVISION.
       WORKING-STORAGE   SECTION.
       77 WRK-VENDA1     PIC  9(08)        VALUE ZEROS.
       77 WRK-VENDA2     PIC  9(08)        VALUE ZEROS.
       77 WRK-MEDIA      PIC  9(08)        VALUE ZEROS.
       77 WRK-MEDIAFN    PIC  $ZZZ.Z99,99  VALUE ZEROS.
       77 WRK-VENDAMS    PIC  $ZZZ.Z99,99  VALUE ZEROS.

       PROCEDURE         DIVISION.
       MAIN-PROCEDURE.
           ACCEPT      WRK-VENDA1 FROM CONSOLE.
           ACCEPT      WRK-VENDA2 FROM CONSOLE.

      *********************** MÉDIA VENDAS ************************
           COMPUTE     WRK-MEDIA = (WRK-VENDA1 + WRK-VENDA2) / 2.

           MOVE        WRK-VENDA1 TO       WRK-VENDAMS.
           DISPLAY    '========================================='
           DISPLAY    'VENDA NO VALOR: '   WRK-VENDAMS
           END-DISPLAY.

           MOVE        WRK-VENDA2 TO       WRK-VENDAMS.
           DISPLAY    'VENDA NO VALOR: '   WRK-VENDAMS
           END-DISPLAY.

           MOVE        WRK-MEDIA  TO       WRK-MEDIAFN.
           DISPLAY    'MEDIA DE VENDA: '   WRK-MEDIAFN
           END-DISPLAY.
           STOP RUN.
