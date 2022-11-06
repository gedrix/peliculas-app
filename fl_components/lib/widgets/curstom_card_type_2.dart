import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {

  final String imageUrl;
  final String? name;
  const CustomCardType2({
      super.key, 
      required this.imageUrl, 
      this.name
    });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15)
      ),
      elevation: 10,
      shadowColor: AppTheme.secondary.withOpacity(0.2),
      child: Column(
        children:  [

          FadeInImage (
          image:  NetworkImage(imageUrl),
          placeholder:  const AssetImage('assets/img/jar-loading.gif'), 
          width: double.infinity,
          height: 230,
          fadeInDuration: const Duration(milliseconds: 300),
          //fit: BoxFit.cover,
          ),
          if (name != null)  //con esta condicion puedo hacer que no salga no tittle en las card, si le quito sale el msj en las card
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child:  Text(name ?? 'No title')
            )
        ],
      ),
    );
  }
}