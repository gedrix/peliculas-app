import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('Tarjertas')
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        children: const [

          CustomCardType1(),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://previews.123rf.com/images/doddis/doddis1707/doddis170700007/82505957-un-minimalismo-enso-c%C3%ADrculo-zen-ilustraci%C3%B3n-vectorial-.jpg',),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440', name: 'paisaje'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg', name: 'other paisaje'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440'),
          SizedBox(height: 20),
          CustomCardType2(imageUrl: 'https://elviajerofeliz.com/wp-content/uploads/2015/09/paisajes-de-Canada.jpg'),
          SizedBox(height: 20),
        ],
      )
    );
  }
}
