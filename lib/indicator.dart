import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Indicator
 extends StatelessWidget {
  int index;
  Indicator
  (this.index);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildContainer(index==0?Colors.black:Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==1?Colors.black:Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==2?Colors.black:Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==3?Colors.black:Color.fromARGB(255, 84, 82, 82)),
        BuildContainer(index==4?Colors.black:Color.fromARGB(255, 84, 82, 82)),
      ],
    ) ;
  }


  Container BuildContainer(Color color){
    return Container(
      margin: EdgeInsets.all(2),
      height: 10,
      width: 10,
     decoration: BoxDecoration(
       color: color,
      shape:BoxShape.circle,
     ),
    );
  }
}