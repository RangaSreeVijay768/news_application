// import 'dart:convert';
//
// import 'package:chat_app/task_home_screen_model/task_home_screen_model.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
//
// class TaskHomeScreen extends StatefulWidget{
//   const TaskHomeScreen({super.key});
//
//   @override
//   _TaskHomeScreenState createState() => _TaskHomeScreenState();
//
// }
//
// class _TaskHomeScreenState extends State<TaskHomeScreen>{
//   bool isLoading = false;
//   List blogs = [] ;
//
//   @override
//   void initState(){
//     super.initState();
//     this.getBlogApi();
//   }
//
//   getBlogApi() async{
//     setState(() {
//       isLoading = true;
//     });
//     final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
//     final String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';
//
//     var response = await http.get(Uri.parse(url), headers: {
//       'x-hasura-admin-secret': adminSecret,
//     });
//     // var data = jsonDecode(response.body.toString());
//     if (response.statusCode == 200) {
//       var blogList = json.decode(response.body)['blogs'];
//       setState(() {
//         blogs = blogList;
//         isLoading = false;
//       });
//       print(blogs);
//       // return blogList.map((json) => TaskHomeScreenModel.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load data');
//       // Request failed
//       print('Request failed with status code: ${response.statusCode}');
//       print('Response data: ${response.body}');
//     }
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ListView.builder(
//               itemCount: blogs.length,
//               itemBuilder: (context, index){
//                 return BlogList(blogs[index]);
//               })
//         ],
//       ),
//     );
//   }
//
//   Widget BlogList(item){
//     var title = item['title'];
//     return Text(title);
//   }
//
// }




// import 'dart:convert';
// import 'package:http/http.dart' as http;
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class Post {
//   final String id;
//   final String title;
//   final String body;
//
//   Post({required this.id, required this.title, required this.body});
//
//   factory Post.fromJson(Map<String, dynamic> json) {
//     final id = json['id'] as String? ?? ''; // Provide a default value if id is null
//     final title = json['title'] as String? ?? ''; // Provide a default value if title is null
//     final body = json['imageUrl'] as String? ?? ''; // Provide a default value if body is null
//
//     return Post(
//       id: id,
//       title: title,
//       body: body,
//     );
//   }
//
// }
//
// class TaskHomeScreen extends StatelessWidget{
//
//   Future<Post> fetchPosts() async {
//         final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
//     final String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';
//
//     final response = await http.get(Uri.parse(url), headers: {
//       'x-hasura-admin-secret': adminSecret,
//     });
//
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       print(data);
//       return Post.fromJson(data);
//     } else {
//       throw Exception('Failed to load data');
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: FutureBuilder<Post>(
//         future: fetchPosts(),
//         builder: (context, snapshot) {
//           if (snapshot.connectionState == ConnectionState.waiting) {
//             return CircularProgressIndicator();
//           } else if (snapshot.hasError) {
//             return Text('Error: ${snapshot.error}');
//           } else {
//             final posts = snapshot.data!;
//             return ListTile(
//               title: Text(posts.id.toString()),
//               subtitle: Text(posts.body.toString()),
//             );
//           }
//         },
//       )
//
//     );
//   }
//
// }



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../my_app/themes/app_colors.dart';

class TaskHomeScreen extends StatefulWidget {
  const TaskHomeScreen({super.key});

  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<TaskHomeScreen> {
  List users = [];
  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    this.fetchUser();
  }
  fetchUser() async {
    setState(() {
      isLoading = true;
    });
            final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
    final String adminSecret = '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';


    final response = await http.get(Uri.parse(url), headers: {
      'x-hasura-admin-secret': adminSecret,
    });
    // print(response.body);
    if(response.statusCode == 200){
      var items = json.decode(response.body)['blogs'];
      setState(() {
        users = items;
        isLoading = false;
      });
    }else{
      users = [];
      isLoading = false;
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Listing Users"),
      ),
      body: getBody(),
    );
  }
  Widget getBody(){
    if(users.contains(null) || users.length < 0 || isLoading){
      return Center(child: CircularProgressIndicator(valueColor: new AlwaysStoppedAnimation<Color>(primary),));
    }
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: (context,index){
          return getCard(users[index]);
        });
  }
  Widget getCard(item){
    var fullName = item['title'];
    var email = item['id'];
    var image = item['image_url'];
    return Card(
      elevation: 1.5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListTile(
          title: Row(
            children: <Widget>[
              SizedBox(width: 20,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(60/2),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(image)
                        )
                    ),
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width-140,
                      child: Text(fullName,style: TextStyle(fontSize: 17),)),
                  SizedBox(height: 10,),
                  Text(email,style: TextStyle(color: Colors.grey),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}