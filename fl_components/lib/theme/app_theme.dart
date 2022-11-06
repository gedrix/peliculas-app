
import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Color.fromARGB(255, 163, 107, 223);
  
   static const Color secondary = Color.fromARGB(255, 91, 60, 128);

  static final ThemeData lightTheme = ThemeData.light().copyWith(
        //color primario
        primaryColor: primary,

        //appbartheme
        appBarTheme: const AppBarTheme(
          color:  primary,
          elevation: 5
        ),

        textButtonTheme: TextButtonThemeData(
          // style: TextButton.styleFrom(primary: secondary)
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(secondary),
          )
        ),

        floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: secondary,
            elevation: 3
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: secondary,
              shape: const StadiumBorder(),
              elevation: 10
            )
          ),

          //cambio los colores de los inputs de manera general
          inputDecorationTheme: const InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: secondary),
            enabledBorder:  OutlineInputBorder(
              borderSide: BorderSide ( color: secondary  ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            focusedBorder:  OutlineInputBorder(
              borderSide: BorderSide ( color: secondary  ),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
            )
          )
      );
  
}