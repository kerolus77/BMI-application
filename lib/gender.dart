import 'package:flutter/material.dart';

import 'package:task_5/shape.dart';

// ignore: must_be_immutable
class Gender extends StatefulWidget {
  String type;
  BuildContext cont;
   Gender(this. type,this.cont,{super.key});

  @override
  // ignore: no_logic_in_create_state
  State<Gender> createState() => _GenderState(type,cont);
}

class _GenderState extends State<Gender> {
  String type;  
   bool isMale=false;
   var b=Colors.black;
   BuildContext cont;

  _GenderState(this.type,this.cont);
  @override
  Widget build(cont) {
    return Expanded(
      flex: 1,
      child: GestureDetector(
        onTap: (){
          setState(() {
            isMale=(type=='male')?true:false;
            
            
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
           color: (isMale && type == 'male') || (!isMale && type == 'female')
                ? Colors.teal
                : Colors.blueGrey,
            ),
         child: Stack(
          children: [
            Column(
              children: [
                Row(
                  children: [
                       CustomPaint(
                          painter: Semicircle(),
                           ),
                  ],
                )
              ],
            ),
             Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(type == 'male' ? Icons.male : Icons.female, size: 90),
              const SizedBox(height: 15),
              Text(
                type == 'male' ? 'Male' : 'Female',
                style: Theme.of(context).textTheme.headline2,
              ),
            ],
          ),
          ],
         )
        ),
      )
    
    );
  }
}



