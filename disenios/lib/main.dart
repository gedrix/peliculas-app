import 'package:disenios/screens/basic_design.dart';
import 'package:disenios/screens/home_screen.dart';
import 'package:disenios/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark); //* en teoria para cambiar el color de la barra de la hora y bateria en la pantalla
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      theme: ThemeData.dark(),
      routes: {
        'basic_design': ( _ ) =>BasicDesignScreen(),
        'scroll_screen': (_ ) => ScrollScreen(),
        'home_screen': (_ ) => HomeScreen(),
      },
    );
  }
}

