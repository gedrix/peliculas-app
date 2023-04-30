import 'package:flutter/material.dart';

const colorList = [
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
  AppTheme({
     this.selectColor = 1,
  }):assert(selectColor >=0, 'El color no existe'),
     assert(selectColor < colorList.length, 'El color no existe');

  ThemeData getTheme() => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: colorList[selectColor],
    appBarTheme: const AppBarTheme(
      centerTitle: true
    )
  );
}
