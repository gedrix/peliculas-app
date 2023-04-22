import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 228, 117, 48);

const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.black,
  Colors.yellow,
  Colors.green,
  Colors.purple,
  Colors.pink,
  Colors.red,
  Colors.cyan,
];

class Apptheme {
  final int selectedColor;

  Apptheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, 
        colorSchemeSeed: _colorThemes[selectedColor],
        brightness: Brightness.light
        );
  }
}
