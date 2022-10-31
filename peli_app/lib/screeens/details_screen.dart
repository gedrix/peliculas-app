import 'package:flutter/material.dart';
import 'package:peli_app/widgets/widgets.dart';

class DetailsScreen extends StatelessWidget {
   
  const DetailsScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    //TODO CAMBIAR LUEGO POR UNA ISNTANCIA DE MOVIE

    final String movie = ModalRoute.of(context)?.settings.arguments.toString() ?? 'no-movie';

    return  Scaffold(
      body: CustomScrollView(
        slivers: [
          _CustomAppBar(),

          SliverList(
            delegate: SliverChildListDelegate([
              _PosterAndtitle(),
              
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),
              _OverView(),

              CastingCards(),
            ]
            )
          )
        ],
      )
    );
  }
}

class _CustomAppBar extends StatelessWidget {

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
          padding: EdgeInsets.only(bottom: 10),
          child: const Text(
            'movie.title',
            style: TextStyle(fontSize: 16),
            )
        ),
        background: const  FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: NetworkImage('https://via.placeholder.com/500x300'),
            fit:BoxFit.cover
          )
      ),
    );
  }
}


class _PosterAndtitle  extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final TextTheme = Theme.of(context).textTheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: const FadeInImage(
              placeholder: AssetImage('assets/no-image.jpg'),
            image: NetworkImage('https://via.placeholder.com/200x300'),
            height: 150,
            ),
          ),
          SizedBox(width: 20),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('movie.title',style: TextTheme.headline5, overflow:  TextOverflow.ellipsis, maxLines: 2,),
              Text('movie.originalTitle',style: TextTheme.subtitle1, overflow:  TextOverflow.ellipsis, maxLines: 1,),
              Row(
                 children: [
                  Icon(Icons.star_outlined, size:15, color: Colors.grey),
                  SizedBox(width: 5),
                  Text('movie.voteAverage', style: TextTheme.caption)
                 ],
              )
            ],
          )

        ],
      ),
    );
  }
}


class _OverView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   final TextTheme = Theme.of(context).textTheme;
    
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Text('Tempor ex aute amet ullamco laboris culpa laboris irure velit do qui pariatur laborum reprehenderit. Aute dolore nulla ad enim esse et eiusmod. Mollit ea ad dolore culpa occaecat occaecat irure consectetur ullamco voluptate. Mollit duis fugiat esse id fugiat.',
       textAlign: TextAlign.justify,
        style: TextTheme.subtitle1),
    );
  }
}
