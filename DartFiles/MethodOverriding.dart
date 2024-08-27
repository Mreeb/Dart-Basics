void main() {

  var noodles = MenuItem('Veg Noodles',9.99);
  var pizza = MenuItem('Volcano Pizza', 12.99);
  
  print("Item is ${noodles.title} and Price is ${noodles.price}.");
  print("Item is ${pizza.title} and Price is ${pizza.price}.");
  
  print(noodles.format());
  print(pizza.format());
  
  
  var toppingPizza = Pizza(["Mushrooms", "Cheeze"], "Fajita", 15.99);
  
  print(toppingPizza.format());
  
  //Now with the overriding in Menu Class we can call these as follows as well
  
  print("\n\n\n\n");
  print(noodles);
  print(pizza);
  print(toppingPizza);
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
    
    var formattedToppings = 'Contains:'; 
    for (final t in toppings){
      formattedToppings = '$formattedToppings $t';
    }
    
    return "$title --> $price \n $formattedToppings";
  }
}
