      ******************************************************************
      * Author: Fábio Correia
      * Date: 15/05/2018
      * Purpose: study
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. COBOLINIT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
           01 NAMES   PIC X(16).
           COPY BOOK.
       LINKAGE SECTION.
           01 TESTNAME PIC X(16).
           01 SAIDA PIC X(16).
       PROCEDURE DIVISION USING TESTNAME, SAIDA.
       MAIN-PROCEDURE.
           STRING FIRST-NAME DELIMITED BY''
           ''DELIMITED BY SIZE
           LAST-NAME DELIMITED BY SIZE
           INTO SAIDA
           GOBACK
           STOP RUN.
       END PROGRAM COBOLINIT.
