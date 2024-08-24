void main() {
  var name = 'mario';
  // variable types can't be changed
  // we can't do name = 15; now
  // however we can change it to a diffrent string
  print("My name is $name");

  final age = 25;

  // Now if the final keyword is used the value of age can't be changed
  // we can't age = 26; do this

  print("My age is $age");

  const isOpen = true;

  // Now that const is used we can't change it to flase cuz it is const

  print(isOpen);

  // now when do we use const and final they both seem to be doing the same thing
  // we use final when we dont know what would be the value at compile time say the value of final would be from a function
  // we use const when we know the value at compile time

  //lets do some math operations

  print('lets do some math operations');
  print(age + 10);
  print(age - 10);
  print(age * 10);
  print(age / 10);
  print(age % 10);
}
