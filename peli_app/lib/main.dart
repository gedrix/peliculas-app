import 'package:flutter/material.dart';
import 'package:peli_app/providers/movie_provider.dart';
import 'package:peli_app/screeens/screen.dart';
import 'package:provider/provider.dart';


void main() => runApp(AppState());

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> MoviesProvider(), lazy: false, )
      ],
      child: const MyApp(),
      );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Peliculas',
      initialRoute: 'home',
      routes: {
        'home'    : (_) => HomeScreen(),
        'details' : (_) => DetailsScreen(),
      },
      theme: ThemeData.dark().copyWith(
        appBarTheme: AppBarTheme(
          color: Color.fromARGB(255, 97, 6, 200)
        )
      )
    );
  }
}