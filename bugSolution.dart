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

  // Solution: use null-aware operators to prevent null pointer exceptions
  final result = myObject.myVariable * 2;
  print(result); //This line will execute correctly
  final anotherResult = myObject._myVariable != null ? myObject._myVariable! * 2 : 0;
  print(anotherResult);
}
```