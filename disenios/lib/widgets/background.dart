import 'dart:math';

import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final boxDecoration = const  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.2, 0.8],
          colors: [
            Color(0xff2E305F),
            Color(0Xff202333)
          ]
        )
      );
  @override
  Widget build(BuildContext context) {
    
    return Stack(
      children: [
        //color morado de fondo
        Container( decoration: boxDecoration ),

        //caja rosoda
        Positioned(
          top: -100,
          left: -50,
          child: _PinkBox()
        )
      ],
    );
  }
}

class _PinkBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: -pi / 5.0,
      child: Container(
        width: 360,
        height: 360,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(80),
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(236, 98, 188, 1),
              Color.fromRGBO(251, 142, 172, 1),
            ]
          )
        ),
      ),
    );
  }
}