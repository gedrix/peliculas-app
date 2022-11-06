
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
   
  const BasicDesignScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        children:  [
          //*imagen
          Image(image: AssetImage('assets/land.jfif')),

          //*titulo
           tittle(),

           //*section de botons
          bottonSection(),

           //* section de texto
           Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Quis cupidatat minim proident minim aliquip et. Excepteur ea est duis consectetur id sit minim in et do adipisicing irure eu. Voluptate qui sint dolore nulla fugiat. Dolor qui consequat amet ullamco duis laboris enim.')
            ),
        ],
      ),
    );
  }
}



class tittle extends StatelessWidget {
  const tittle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        children:[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const[
              Text('titulo principal', style: TextStyle(fontWeight: FontWeight.bold),),
              Text('titulo secundario', style:  TextStyle(color: Colors.black45),),

            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red,),
          const Text('41')

        ],
      ),
    );
  }
}


class bottonSection extends StatelessWidget {
  const bottonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          customButton(icon:Icons.call,text: 'call'),
          customButton(icon:Icons.send,text: 'route'),
          customButton(icon:Icons.share,text: 'share'),

  
        ],
      ),
    );
  }
}

class customButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const customButton({
    Key? key, 
    required this.icon, 
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color:Colors.blue, size: 30,),
        Text(this.text)
      ],
    );
  }
}