import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:project_pdm/src/request_example/model/post.dart';
// https://www.digitalocean.com/community/tutorials/flutter-flutter-http

class HttpService {
  final String postsURL = "https://jsonplaceholder.typicode.com/posts";
  final String postsURL2 = "jsonplaceholder.typicode.com";

  Future<List<Post>> getPosts() async {
    var url = Uri.https(postsURL2, '/posts');

    //import 'package:http/http.dart' as http;
    //var url = Uri.https('example.com', 'whatsit/create');
    //var response = await http.post(url, body: {'name': 'doodle', 'color': 'blue'});

    //final res = await http.get(Uri.parse(postsURL));
    var uri = Uri.parse(postsURL);
    var res = await http.get(uri);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body
          .map(
            (dynamic item) => Post.fromJson(item),
          )
          .toList();

      return posts;
    } else {
      throw "Unable to retrieve posts.";
    }
  }
}
