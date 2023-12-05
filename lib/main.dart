import 'package:chat_app/my_app/articles/widgets/articles_get_all_articles/articles_get_all_articles.dart';
import 'package:chat_app/my_app/car_game/car.dart';
import 'package:chat_app/my_app/car_game/car5.dart';
import 'package:chat_app/my_app/car_game/car_game/car_game.dart';
import 'package:chat_app/my_app/share.dart';
import 'package:chat_app/newsApi/widgets/news_api.dart';
import 'package:chat_app/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'authenticate/authenticate.dart';
import 'core/blocs/app_bloc_observer.dart';
import 'core/di/injection.dart';
import 'firebase_options.dart';
import 'my_app/chat/chat_menu/chat_menu.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'my_app/themes/themes.dart';



void main() async {
  Bloc.observer = const AppBlocObserver();

  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await configureDependencies();
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget{
  const MyApp1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      builder: FToastBuilder(),
      routerConfig: router,
      theme: Themes.lightTheme,
    );
  }
  
}







class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: Themes.lightTheme,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),

            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const DemoApp()));
                },
                child: Text("share")
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp5()));
                },
                child: Text("car game")
            ),
            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ArticlesGetAllArticles()));
                },
                child: Text("Articles")
            ),


            TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const MyStatefulWidget()));
                },
                child: Text("Bottom Menu")
            ),
            TextButton(
                onPressed: (){
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp6()));
                },
                child: Text("Notifications")
            )

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
