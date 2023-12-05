import 'package:chat_app/favourites/favourites_cubit.dart';
import 'package:chat_app/my_app/blogs_model/blogs_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../my_app/blog_home_screen/blog_home_screen_cubit.dart';
import 'favourites_controller.dart';



class FavouritesPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<FavouritesCubit>(
        create: (context) => FavouritesCubit(),
        child: BlocBuilder<FavouritesCubit, List<Blogs>>(
          builder: (context, favorites) {
            return Scaffold(
              appBar: AppBar(
                actions: [
                  TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red
                    ),
                      onPressed: (){
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context) => WebViewApp()));
                      },
                      child: Text("Web view")
                  ),
                ],
              ),
              body: ListView.builder(
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  // final favorite = favorites[index];
                  return ListTile(
                    title: Text('ertyuio', style: TextStyle(color: Colors.red),),
                    trailing: IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {
                        // context.read<FavouritesCubit>().removeFavorite(favorite);
                      },
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

}


