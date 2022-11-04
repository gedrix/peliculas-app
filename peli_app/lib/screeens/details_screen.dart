import 'package:flutter/material.dart';

import 'package:peli_app/models/models.dart';
import 'package:peli_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
   
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //TODO CAMBIAR LUEGO POR UNA ISNTANCIA DE MOVIE

    final Movie movie = ModalRoute.of(context)!.settings.arguments as Movie;  //* esto de que llega lo trata como una pelicula

    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          //*appbar
          _CustomAppBar(movie), //* para pasar valores es necesario crear constructor

          SliverList(
            delegate: SliverChildListDelegate([
              //* portada y titulo
              _PosterAndtitle(movie),
              //* titulo, titulo original puntuacion descrp
              _OverView(movie),
              //*actores
              CastingCards(movie.id),
            ]
            )
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

  final Movie movie;

  const _CustomAppBar(this.movie);


  @override
  Widget build(BuildContext context) {
    return  SliverAppBar(
      backgroundColor: Colors.indigo,
      expandedHeight:200,
      floating: true,
      pinned: true,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        titlePadding: EdgeInsets.all(0),
        title: Container(
          
          width: double.infinity,
          alignment: Alignment.bottomCenter,
          color: Colors.black12,
          padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
          
          child:  Text(
            movie.title,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center
            )
        ),
        background:   FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage(movie.fullBackdropPath),
            fit:BoxFit.cover
          )
      ),
    );
  }
}


class _PosterAndtitle extends StatelessWidget {

  final Movie movie;
  const _PosterAndtitle( this.movie ) ;
 
  @override
  Widget build(BuildContext context) {

    final TextTheme = Theme.of(context).textTheme;

    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child:  FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
              image: NetworkImage(movie.fullBackdropPath),
              height: 150,
              width: 110,
            ),
          ),
          SizedBox(width: 20),

          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: size.width - 190),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(movie.title,style: TextTheme.headline5, overflow:TextOverflow.ellipsis, maxLines: 3),
                Text(movie.originalTitle,style: TextTheme.subtitle1, overflow:  TextOverflow.ellipsis, maxLines: 2),
                Row(
                   children: [
                    Icon(Icons.star_outlined, size:15, color: Colors.grey),
                    SizedBox(width: 5),
                    Text(movie.voteAverage.toString()  , style: TextTheme.caption)
                   ],
                )
              ],
            ),
          )

        ],
      ),
    );
  }
}


class _OverView extends StatelessWidget {
  final Movie movie;

  const _OverView(this.movie);

  @override
  Widget build(BuildContext context) {
   final TextTheme = Theme.of(context).textTheme;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text(movie.overview,
       textAlign: TextAlign.justify,
        style: TextTheme.subtitle1),
    );
  }
}
