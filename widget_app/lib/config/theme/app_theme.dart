import 'package:flutter/material.dart';

const colorList = <Color>[
Colors.blue,
Colors.teal,
Colors.red,
Colors.green,
Colors.purple,
Colors.deepOrange,
Colors.deepPurple,
];

class AppTheme {

  final int selectColor;
  final bool isDarkMode;

  AppTheme({
     this.selectColor = 0,   //color por defecto
     this.isDarkMode = false
  }):assert(selectColor >=0, 'El color no existe'),
     assert(selectColor < colorList.length, 'El color no existe');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    brightness: isDarkMode?  Brightness.dark: Brightness.light,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );

  AppTheme copyWith({
    int? selectColor,
    bool? isDarkMode
  }) => AppTheme(
    selectColor: selectColor?? this.selectColor,
    isDarkMode:  isDarkMode?? this.isDarkMode
  );
}
