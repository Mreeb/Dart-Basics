void main() {
  var scoresdynamic = [50, 75, 20, 99, "Areeb"];
  print(scoresdynamic);
  
  List<int> scoresint = [50, 75, 20, 99];
  print(scoresint); 
  
  //change at index
  //scoresint[0] = 5;
  //print(scoresint);
  
  //add value
  //scoresint.add(100);
  //print(scoresint);
  
  //remove value
  //scoresint.remove(75);
  //print(scoresint);
  
  //remove value
  //scoresint.removeLast();
  //print(scoresint);
    
  //print(scoresint.length);
  
  // Shuffle
  //scoresint.shuffle();
  //print(scoresint);
  
  
  
  
  //print(scoresint.indexOf(20));
  
  //final List<String> scoresstr = ['a','b','c','c'];
  //print(scoresstr);
  
  
  var names = {'areeb', 'ali', 'fasi'};
  print(names);
  
  Set<String> names1 = {'areeb', 'ali', 'fasi'};
  print(names1);
  
  names1.add("areeb");
  names1.add("Khan");
  names1.remove("fasi");
  
  print(names1);
  print(names1.length);
  
}
