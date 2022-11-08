import 'package:disenios/widgets/Page_title.dart';
import 'package:disenios/widgets/background.dart';
import 'package:disenios/widgets/card_table.dart';
import 'package:disenios/widgets/custom_bottton_navigation.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //background
          Background(),

          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomBottonNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //titulos
          Pagetitle(),

          //card table
          CardTable()
        ],
      ),
    );
  }
}