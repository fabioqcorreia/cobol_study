      ******************************************************************
      * Author: Fábio Correia
      * Date: 27/01/2018
      * Purpose: study
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. EQ_SEG_GRAU.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 VARIABLES.
          05 A PIC S9(5).
          05 B PIC S9(5).
          05 C PIC S9(5).
          05 V4 PIC 9(5) VALUE 4.
          05 V2 PIC 9(5) VALUE 2.
          05 DELTA PIC S9(5).
          05 X1 PIC S9(5)V9(2).
          05 X2 PIC S9(5)V9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "DIGITE O VALOR DO 'A': "
            ACCEPT A.
            DISPLAY "DIGITE O VALOR DO 'B': "
            ACCEPT B.
            DISPLAY "DIGITE O VALOR DO 'C': "
            ACCEPT C.

            COMPUTE DELTA = (B**2)-V4*A*C

            IF NOT DELTA > 0 THEN
              DISPLAY "DELTA NÃO PODE SER NEGATIVO. VALOR DE DELTA: ",
              DELTA
              STOP RUN.

            COMPUTE X1 = -B+(DELTA**0.5)
            COMPUTE X1 = X1/(V2*A)
            COMPUTE X2 = -B-(DELTA**0.5)
            COMPUTE X2 = X2/(V2*A)

            DISPLAY "---------------RESULTADO----------------"
            DISPLAY "* VALOR X1:                  ", X1, " *"
            DISPLAY "* VALOR X2:                  ", X2, " *"
            DISPLAY "-------------------FIM------------------"
            STOP RUN.

       END PROGRAM EQ_SEG_GRAU.
