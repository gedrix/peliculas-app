

import 'package:flutter/material.dart';

class CustomBottonNavigation extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return BottomNavigationBar(
      showSelectedLabels: false, //* oculta el texto del label seleccionad
      showUnselectedLabels: false, //* oculta el texto del label
       selectedItemColor: Colors.pink,
      backgroundColor: Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: Color.fromRGBO(116, 117, 52, 1),
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.calendar_month),
          label: 'Calendario'
        ),
        
        BottomNavigationBarItem(
          icon: Icon(Icons.badge_outlined),
          label: 'Inicio'
        ),
        
        BottomNavigationBarItem(
          icon: Icon(Icons.superscript),
          label: 'fin'
        ),
      ]
    );
  }
}