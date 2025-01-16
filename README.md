# Dart Null-Safety Issue: Unexpected Null Pointer Exception

This repository demonstrates a common error in Dart related to null safety. The `bug.dart` file contains code that can throw an unexpected `NullPointerException` if the nullable variable `_myVariable` is not explicitly handled as potentially null in all places where it is used.  The solution is presented in `bugSolution.dart`.

## Problem:

The getter `myVariable` handles null gracefully. However, if the variable is used in an expression before it is assigned a value (or if its value is ever set back to null), a runtime error will occur. 

## Solution:

The solution involves carefully checking for null before using the variable in any expression, or using the null-aware operator (`?.`) to safely access its value.