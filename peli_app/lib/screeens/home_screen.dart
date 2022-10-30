import 'package:flutter/material.dart';
import 'package:peli_app/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () { },
              icon: Icon(Icons.search_outlined)
            )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
                children: [

                  //cardSwiper
                  SwiperScreen(),

                  //listado de peliculas
                  MovieSlider(),

                ],
              )
      )
    );
  }
}