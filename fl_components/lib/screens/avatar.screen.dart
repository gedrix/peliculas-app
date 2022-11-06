import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
   
  const AvatarScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Avatar Andres Camacho'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const CircleAvatar(
              child:  Text('AC'),
              backgroundColor: Color.fromARGB(255, 206, 32, 237),
            ),
          )
        ],
      ),
      body: const Center(
         child: CircleAvatar(
          maxRadius: 125,
          backgroundImage: NetworkImage('https://4.bp.blogspot.com/-YxKJxL_qzvQ/XUZAOEHwiZI/AAAAAAAAmYs/lAnqYsvs_L0aJEkOVZc2KS2m-PuzNDOFQCLcBGAs/w1200-h630-p-k-no-nu/episodio-one-piece-sin-relleno.jpg'),
         ),
      ),
    );
  }
}