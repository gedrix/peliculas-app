import 'package:flutter/material.dart';


class ScrollScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var  boxDecoration =const BoxDecoration(
          gradient:  LinearGradient(
            begin:  Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.5, 0.5],
            colors:  [
              Color(0xff5EE8C5),
              Color(0xff30BAD6)
            ]
          )
        );
    return Scaffold(
      body: Container(
        decoration:  boxDecoration,
        child: PageView(
          physics: BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          children: [
            Page1(),
            Page2(),
          ],
        ),
      )
   );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //background image
        Background(),

        //main content
        mainContent()
      ],
    );
  }
}

class Page2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      child: Center(
        child: TextButton(
          onPressed: (){},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Text('bienvenido', style: TextStyle(color: Colors.white, fontSize: 30),),
          ) ,
          style: TextButton.styleFrom(
            backgroundColor: Color(0xff0098FA),
            shape: StadiumBorder()
          ),
        ),
      ),
    );
  }
}

class mainContent extends StatelessWidget {
  const mainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);
    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 30,),
          Text('11°', style: textStyle,),
          Text('Miercoles', style: textStyle,),
          Expanded(child: Container()),
          Icon(Icons.keyboard_arrow_down_outlined, size: 100, color: Colors.white, )
        ],
      ),
    );
  }
}

class Background extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(
        image: AssetImage('assets/scroll-1.png'),
        ),
    );
  }
}