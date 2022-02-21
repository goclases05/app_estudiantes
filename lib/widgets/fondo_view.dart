import 'package:flutter/material.dart';


class BlueBox extends StatelessWidget {
  const BlueBox({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: size.height*1,
      decoration: blueBackground(),
      child: Stack(
        children: [
          Positioned(top: 90,left: 30,child:_Bubble()),
          Positioned(top: -40,left: -30,child:_Bubble()),
          Positioned(top: -50,right: -20,child:_Bubble()),
          Positioned(bottom: -50,left: 10,child:_Bubble()),
          Positioned(bottom: 200,left: 50,child:_Bubble()),
          Positioned(bottom: 350,right: 50,child:_Bubble()),
          Positioned(bottom: 120,right: 20,child:_Bubble()),

          /*Positioned(bottom: -90,right: -30,child:_Bubble()),
          Positioned(bottom: 40,right: 30,child:_Bubble()),
          Positioned(bottom: 50,left: 20,child:_Bubble()),

          Positioned(top: 50,right: -10,child:_Bubble()),
          Positioned(top:-120,left: -20,child:_Bubble()),*/
        ],
      ),
    );
  }

  BoxDecoration blueBackground() {
    return  BoxDecoration(
      gradient: LinearGradient(
        colors:[
          Color.fromARGB(255, 12, 94, 150),
          Colors.lightBlue.shade800,
        ]
      )
    );
  }
}

class _Bubble extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: Color.fromRGBO(255, 255, 255, 0.05)
      ),
    );
  }
}

