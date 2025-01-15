01  WS-AREA. 
    05  WS-COUNT PIC 9(5) VALUE 0. 
    05  WS-TABLE OCCURS 100 TIMES. 
       10  WS-ITEM PIC X(50). 

* In this example, the table is defined with a fixed size of 100 items.
* If the program attempts to access an element beyond the defined size (e.g., WS-TABLE(101)), it will lead to a subscript out-of-range error.

PROCEDURE DIVISION.
    PERFORM VARYING WS-COUNT FROM 1 BY 1 UNTIL WS-COUNT > 100 
       MOVE 'Value ' & WS-COUNT TO WS-TABLE(WS-COUNT) 
    END-PERFORM.

    DISPLAY 'Access Table element: ' WS-TABLE(101) 

    STOP RUN.