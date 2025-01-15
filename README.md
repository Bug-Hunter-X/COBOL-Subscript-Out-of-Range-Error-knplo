# COBOL Subscript Out-of-Range Bug

This repository demonstrates a common error in COBOL programs: a subscript out-of-range error.  This occurs when your program attempts to access an element in a table or array using an index that is not within the defined bounds of the table.

## Bug Description
The `bug.cob` file contains a COBOL program that defines a table (`WS-TABLE`). The program then attempts to access an element beyond the table's defined size, leading to a runtime error.

## How to Reproduce
1. Compile the `bug.cob` file using a COBOL compiler.
2. Run the compiled program.
3. Observe the subscript out-of-range error. 

## Solution
The `bugSolution.cob` file demonstrates the corrected program.  It adds checks to ensure the index is within the valid range before attempting to access the table element, preventing the error.

##  Learning Points
This example highlights the importance of proper array boundary checks in COBOL and other programming languages.  Always ensure your index variables are within the valid range of your arrays to prevent unexpected errors and program crashes.