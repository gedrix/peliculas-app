import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Table(
      children: const [
        TableRow(
          children:  [
            _SingleCard(icon: Icons.ac_unit_rounded, color: Colors.blue, text: 'General',),
            _SingleCard(icon: Icons.transfer_within_a_station_sharp, color: Colors.pink, text: 'transporte',),
          ]
        ),
        TableRow(
          children:  [
            _SingleCard(icon: Icons.access_alarms_sharp  , color: Colors.purple, text: 'Pastel',),
            _SingleCard(icon: Icons.account_balance_wallet_sharp, color: Colors.indigo, text: 'cuadrado',),
          ]
        ),
        TableRow(
          children:  [
            _SingleCard(icon: Icons.ac_unit_rounded, color: Colors.red, text: 'other',),
            _SingleCard(icon: Icons.transfer_within_a_station_sharp, color: Colors.cyanAccent, text: 'otherv2',),
          ]
        ),
      ],
    );
  }
}


class _SingleCard extends StatelessWidget {
  
  
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    Key? key,
    required this.icon,
    required this.color,
    required this.text,
  }) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    var column = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                CircleAvatar(
                  backgroundColor: color,
                  child: Icon(icon, size:35, color: Colors.white,),
                  radius: 30,
                ),
                SizedBox(height: 10),
                Text(text, style: TextStyle(color: Colors.blue, fontSize: 18),)
              ],
            );
    return _CardBackground(child:column);
  }
}


class _CardBackground extends StatelessWidget {

  final Widget child;

  const _CardBackground({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
              color: Color.fromRGBO(62, 67, 107, 0.5),
              borderRadius: BorderRadius.circular(20)
            ),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
