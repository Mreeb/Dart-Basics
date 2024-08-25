void main() {
  var planets = {
    1: "planet",
  };
  
  print(planets);
  Map<int, String> planets1 = {
    1:"mercury",
    2:"Venus",
    3:"Eaarth",
    4:"mars",
    5:"Jupiter",
  };
  
  print(planets1);
  planets1[2] = "Newplanet";
  planets1[6] = "Uranus";
  print(planets1);
  
  
  print(planets1.containsKey(3));
  print(planets1.containsValue('mars'));
  
  print(planets1.remove(2));
  
  print(planets1.keys);
  print(planets1.values);
  
  print(planets1);
  
  
 
}
