import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Indicator extends StatelessWidget {
  int index;
  Indicator
  (this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildContainer(index==0?Colors.black:const Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==1?Colors.black:const Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==2?Colors.black:const Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==3?Colors.black:const Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==4?Colors.black:const Color.fromARGB(255, 84, 82, 82)),
      ],
    ) ;
  }


  // ignore: non_constant_identifier_names
  Container BuildContainer(Color color){
    return Container(
      margin: const EdgeInsets.all(2),
      height: 10,
      width: 10,
     decoration: BoxDecoration(
       color: color,
      shape:BoxShape.circle,
     ),
    );
  }
}