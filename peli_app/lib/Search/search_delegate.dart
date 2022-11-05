

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:peli_app/models/models.dart';
import 'package:peli_app/providers/movie_provider.dart';

class MovieSearchDelegate extends SearchDelegate{
  
  @override
  // TODO: implement searchFieldLabel
  String? get searchFieldLabel => 'Buscar';

  @override
  List<Widget>? buildActions(BuildContext context) {
   return [
    IconButton(
      icon: Icon (Icons.clear),
      onPressed: () => query= '',
    )
    
   ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    // TODO: implement buildLeading
   return IconButton(
      icon: Icon (Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {

      //return Text('buildSuggestions: $query');
    if(query.isEmpty){
      return  _emptyContainer();
    }
    
    final moviesProvoder = Provider.of<MoviesProvider>(context, listen: false);  //para que no se dibuje de manera innecesaria 

    moviesProvoder.getSuggestionsByQuery(query);
    
    return StreamBuilder(
      stream: moviesProvoder.suggetionStream,
      builder: (_, AsyncSnapshot<List<Movie>> snapshot){

        if (!snapshot.hasData) return _emptyContainer();

        final movies = snapshot.data!;
        return ListView.builder(
          itemCount: movies.length,
          itemBuilder: (_, int index) => _movieItem(movies[index]),
        );
      }
      
      );
  }

  Widget _emptyContainer(){
    return Container(
        child: const Center(
          child: Icon(Icons.movie_creation_outlined, color: Colors.white38, size: 100,),
        ),
      );
  }

}
class _movieItem extends StatelessWidget {

  final Movie movie;
  const _movieItem( this.movie  ) ;
  @override
  Widget build(BuildContext context) {
    
    movie.heroId = 'search-{movie.id}';
    return ListTile(
      leading: Hero(
        tag: movie.heroId!, 
        child: FadeInImage(
          placeholder: AssetImage('assets/no-image.jpg'),
          image: NetworkImage(movie.fullPosterImg),
          width: 90,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(movie.title),
      onTap: () {
       Navigator.pushNamed(context, 'details', arguments: movie);
      },
    );
  }
}

