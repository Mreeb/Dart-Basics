void main() {
  List<int> scores = [50,60,70,80,90];
  
  for (int i = 0; i < 5; i++){
    print("The value of i is $i");
  }
  
  scores.shuffle();
  for (int score in scores){
    if (score > 60){
      print("The Score is $score");  
    } else {
      print("This is not above 50");
    }
  }
  
  print('\n\n\n');
  
  
  List<String> names = ['Areeb','Areebb','Areebbb','Areebbbb','Areebbbb'];
  
  for (String name in names.where((n) => n.length <= 7)){
    print("Names are $name");
  }
}

