void main() {

  var noodles = MenuItem('Veg Noodles',9.99);
  var pizza = MenuItem('Volcano Pizza', 12.99);
  var toppingPizza = Pizza(["Mushrooms", "Cheeze"], "Fajita", 15.99);
  
  var roast = MenuItem('Veggie roast dinner', 12.49);
  var kebab = MenuItem('Plane Kebbab', 7.49);
  
  
//   print(noodles.format());
//   print(pizza.format());  
//   print(toppingPizza.format());
  
  //Now with the overriding in Menu Class we can call these as follows as well
  
//   print("\n\n\n\n");
  print(noodles);
  print(pizza);
  print(roast);
  print(kebab);
  print(toppingPizza);
  
  print("\n\n\n\n");

  var foods = Collection<MenuItem>(
    'Menu Items', [noodles, pizza, roast, kebab]
  );

  
  var random = foods.randomItem();
  print(random);
  
}

// Simple Class

class MenuItem {
  String title;
  double price;
  
  MenuItem(this.title, this.price);
  
  String format() {
    return "$title --> $price";
  }
  
  @override
  String toString(){
    return format();
  }
}

// for extra properties of Pizza we need to extend the class 

class Pizza extends MenuItem {
  
  List<String> toppings;
  
//   Pizza(this.toppings, String title, double price): super(title, price);
  
  //or
  
  @override
  Pizza(this.toppings, super.title, super.price);
  
  String format(){
    
    var formattedToppings = ' Contains:'; 
    for (final t in toppings){
      formattedToppings = '$formattedToppings $t';
    }
    
    return "$title --> $price \n $formattedToppings";
    
  }
  
     @override
    String toString(){
      return 'Instance of Pizza: $title, $price, $toppings';
    }
}

//Generics We pass in the Type in this case its the object type of the class
class Collection<T>{
  String name;
  List<T> data;
  
  Collection(this.name, this.data);
  
  T randomItem() {
    data.shuffle();
    return data[0];
  }
}
