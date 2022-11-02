import 'package:flutter/material.dart';
import 'package:peli_app/providers/movie_provider.dart';
import 'package:peli_app/widgets/widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
   
  const HomeScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final moviesProvider = Provider.of<MoviesProvider>(context);

    // print(moviesProvider.onDisplayMovie);

    return  Scaffold(
      appBar: AppBar(
        title: const Text('Películas en cines'),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () { },
              icon: const Icon(Icons.search_outlined)
            )
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
                children: [

                  //* cardSwiper  - tarjeta principales 
                  SwiperScreen(movies: moviesProvider.onDisplayMovie),

                  //* listado de peliculas populares
                  MovieSlider(
                    movie:moviesProvider.popularMovies,
                    title: 'Populares..!' ,
                    onNextPage: ()=>moviesProvider.getPopularMovies(),  //opcional
                  ),

                ],
              )
      )
    );
  }
}