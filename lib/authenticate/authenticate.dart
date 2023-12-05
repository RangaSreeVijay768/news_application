import 'package:chat_app/main.dart';
import 'package:chat_app/my_app/articles/widgets/articles_get_all_articles/articles_get_all_articles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';

import 'home_screen.dart';
import 'login_screen.dart';

class Authenticate extends StatelessWidget {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Authenticate({super.key});

  @override
  Widget build(BuildContext context) {
    if (_auth.currentUser != null) {
      return MyHomePage(title: 'Title',);
    } else {
      return LoginScreen();
    }
  }
}
