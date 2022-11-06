

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children:  [
          const ListTile(
            leading:  Icon(Icons.photo_album, color: AppTheme.secondary),
            title: Text('Soy un titulo'),
            subtitle: Text('Culpa et cillum occaecat ipsum in ut quis amet ullamco ipsum incididunt duis. Sit est commodo tempor est sunt enim aliqua est minim nulla cupidatat tempor'),
            
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: (){},
                    child: const Text('Cancel'),
                    
                   ),
                   TextButton(
                    onPressed: (){},
                    child: const Text('ok'),
                   )
                ],
              ),
          ),

        ],
      ),
    );
  }
}