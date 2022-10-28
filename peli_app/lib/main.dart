import 'package:flutter/material.dart';
import 'package:peli_app/screeens/screen.dart';


void main() => runApp(const MyApp());

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