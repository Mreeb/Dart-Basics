void main() {
  //now the name must be a string and age must be an int
  final greeting = greet(name: 'Areeb', age: 22);
  print(greeting);
  final greeting1 = greet(age: 21, name: 'ALi');
  print(greeting1);
  final greeting2 = greet(age: 21);
  print(greeting2);
}

//named parameters and positional arguments
String greet({String? name,required int age}) {
  return 'Hi, my name is $name and i am $age';
  
  //can't return any thing other than a String
}
