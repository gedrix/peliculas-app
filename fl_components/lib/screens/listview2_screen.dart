
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
   final options = const [ 'megaman', 'metal gear', 'super smash','final fantasy'];
  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('listview1'),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_right_outlined, color: Colors.deepPurple),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ), 
        separatorBuilder: (context, index) => const Divider(),
         itemCount: options.length
      )
    );
  }
}