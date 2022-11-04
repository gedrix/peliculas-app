
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peli_app/models/models.dart';

class MoviesProvider extends ChangeNotifier{

  final  String _baseUrl ='api.themoviedb.org';
  final String _baseKey ='e603abeb68e47cb9f597c9a964a97e39';
  final String _languaje ='es-ES';
  
  List<Movie> onDisplayMovie=[];
  List<Movie> popularMovies=[];

  Map<int, List<Cast>> movieCast = {};

  int _popularPage=0;
  
  MoviesProvider(){
    //print('inicializador de provider');
   getOnDisplayMovies();

   getPopularMovies();
  }

    // [int page=1] de esta manera se hace opcional si no llega por defecto va a 1
  Future <String> _getJsonDate(String endPoint, [int page=1]) async{
    var url =
      Uri.https(_baseUrl, endPoint, 
        {
          'api_key' :_baseKey,
          'languaje': _languaje,
          'page': '$page'
        }
      );
      // Await the http get response, then decode the json-formatted response.
      final response = await http.get(url);

      return response.body;
  }

  getOnDisplayMovies() async{

    final jsonData = await this._getJsonDate('3/movie/now_playing');
    final nowPlayingResponse = NowPlayingResponse.fromJson(jsonData);
    // print(nowPlayingResponse.results[0].title);
    onDisplayMovie = nowPlayingResponse.results;
    notifyListeners();

  }

  getPopularMovies()async{

    _popularPage++;
    final jsonData = await this._getJsonDate('3/movie/popular',_popularPage);
    final popularResponse = PopularResponse.fromJson(jsonData);
    popularMovies = [...popularMovies, ...popularResponse.results];  //desestructurar
    // print(popularMovies[0]);
    notifyListeners();
  }

  Future<List<Cast>>getMovieCast(int movieId) async{
 
  //verifica que si esta en el mapa simulando que esta en memoria para extraer la  data
    if(movieCast.containsKey(movieId)) return movieCast[movieId]!;
    // print("pidiendo info al servidor");

    final jsonData = await this._getJsonDate('3/movie/$movieId/credits');

    final creditsResponse = CreditsResponse.fromJson(jsonData);

    movieCast[movieId] = creditsResponse.cast;

    return creditsResponse.cast;

  }

  Future <List<Movie>>searchMovie(String query) async{
    final url =
      Uri.https(_baseUrl, '3/search/movie', 
        {
          'api_key' :_baseKey,
          'languaje': _languaje,
          'query': query
        }
      );
    final response = await http.get(url);

    final  searchResponse = SearchResponse.fromJson(response.body);

    return searchResponse.results;

  }
}

