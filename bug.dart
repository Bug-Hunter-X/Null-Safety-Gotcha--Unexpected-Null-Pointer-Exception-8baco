```dart
class MyClass {
  int? _myVariable;

  MyClass(this._myVariable);

  int get myVariable => _myVariable ?? 0; // Default value if null

  void updateMyVariable(int value) {
    _myVariable = value;
  }
}

void main() {
  final myObject = MyClass(null); 
  print(myObject.myVariable); //prints 0

  myObject.updateMyVariable(10);
  print(myObject.myVariable); //prints 10

  //The bug happens when you use myObject.myVariable in an expression without checking null
  final result = myObject.myVariable *2; //This will throw an exception if myVariable was null before initialization
  print(result); // This line will not execute if myVariable is null
}
```