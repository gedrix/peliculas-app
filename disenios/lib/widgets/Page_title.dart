
import 'package:flutter/material.dart';

class Pagetitle extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const  [
            Text('Clasificacion de transaciones', style: TextStyle(fontSize: 20,  fontWeight: FontWeight.bold, color: Colors.white)),
            SizedBox(height: 10,),
            Text('Clasificacion de transaciones subtitulo', style: TextStyle(fontSize: 16, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}