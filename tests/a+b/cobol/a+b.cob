       IDENTIFICATION DIVISION.
       PROGRAM-ID. A-PLUS-B.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM1        PIC 9(10).
       01 NUM2        PIC 9(10).
       01 RESULT      PIC 9(10).
       01 INPUT-LINE  PIC X(100).
       01 DISPLAY-RESULT PIC Z(4).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           ACCEPT INPUT-LINE
           UNSTRING INPUT-LINE DELIMITED BY SPACE
               INTO NUM1, NUM2
           END-UNSTRING
           COMPUTE RESULT = NUM1 + NUM2
           MOVE FUNCTION NUMVAL (RESULT) TO DISPLAY-RESULT
           DISPLAY DISPLAY-RESULT
           STOP RUN.
