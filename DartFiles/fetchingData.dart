
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;


void main() async {
  final post = await fetchPost();
  print("Post Title:  ${post.title},\nPost Body:  ${post.body} ");
}

fetchPost() async { 
  var url = Uri.https('jsonplaceholder.typicode.com','/posts/1');
  
  final response = await http.get(url);
  
  Map<String, dynamic> data = convert.jsonDecode(response.body);
  
  return Post(data['title'], data['userId'], data['id'], data['body']);
  
}

class Post {
  String title;
  int userId;
  int id;
  String body;
  
  
  Post(this.title, this.userId, this.id, this.body);
}
