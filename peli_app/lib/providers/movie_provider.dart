
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:peli_app/models/models.dart';

class MoviesProvider extends ChangeNotifier{

  final  String _baseUrl ='api.themoviedb.org';
  final String _baseKey ='';
  final String _languaje ='es-ES';
  
  List<Movie> onDisplayMovie=[];
  
  MoviesProvider(){
    //print('inicializador de provider');
   getOnDisplayMovies();
  }


  getOnDisplayMovies() async{
    var url =
      Uri.https(_baseUrl, '3/movie/now_playing', 
        {
          'api_key' :_baseKey,
          'languaje': _languaje,
          'page': '1'
        }
      );
      // Await the http get response, then decode the json-formatted response.
      final response = await http.get(url);

      final nowPlayingResponse = NowPlayingResponse.fromJson(response.body);

      // print(nowPlayingResponse.results[0].title);
      onDisplayMovie = nowPlayingResponse.results;

      notifyListeners();

  }
}