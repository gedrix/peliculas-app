import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:peli_app/models/models.dart';
import 'package:peli_app/providers/movie_provider.dart';

class CastingCards extends StatelessWidget {

  final int movieId;

  const CastingCards(     this.movieId  ) ;

  @override
  Widget build(BuildContext context) {

    final movieProvider = Provider.of<MoviesProvider>(context, listen: false); //en false xq no es necesario volver a redibujar
  
    return FutureBuilder(
      future: movieProvider.getMovieCast(movieId),
      builder:(_, AsyncSnapshot<List<Cast>> snapshot ){

        if( !snapshot.hasData ){
            return Container(
              constraints: BoxConstraints(maxWidth: 150),
              height: 180,
              child: CupertinoActivityIndicator(),
            );
        }

        //* hasta aqui ya tenemos toda info de los actores
        final List<Cast> cast = snapshot.data!;
         return Container(
          margin: EdgeInsets.only(bottom: 30),
          width: double.infinity,
          height: 180,
          // color: Colors.red,
          child: ListView.builder(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder:(_, int index) =>_CastCard(cast[index]),
            ),
        );
      } ,
    );

   
  }
}


class _CastCard extends StatelessWidget {

  final  Cast actor;

  const _CastCard(
     this.actor,
  );


  @override
  Widget build(BuildContext context) {
    return Container(
    margin: EdgeInsets.symmetric(horizontal: 11),
     width: 110,
     height: 100,
    //  color: Colors.green,
     child: Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child:  FadeInImage(
            placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage(actor.fullProfilePath),
            height: 140,
            width: 100,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 5,),
         Text(
          actor.name,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
        )
      ],
     ),
    );
  }
}
