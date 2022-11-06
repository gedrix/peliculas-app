
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
   final options = const [ 'megaman', 'metal gear', 'super smash','final fantasy'];
  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('listview1'),
      ),
      body: ListView (
        children: [
          
          ...options.map((game) => ListTile(
              title: Text(game),
              trailing: const Icon(Icons.arrow_right_outlined),
            )).toList(),

            

          
        ],
      ),
    );
  }
}