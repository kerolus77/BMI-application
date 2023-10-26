import 'dart:async';
import 'package:flutter/material.dart';
import 'package:task_5/indicator.dart';
import 'package:task_5/startData.dart';

import 'home.dart';

// ignore: camel_case_types
class Start_Page extends StatefulWidget {
  const Start_Page({super.key});

  @override
  State<Start_Page> createState() => _Start_PageState();
}

// ignore: camel_case_types
class _Start_PageState extends State<Start_Page> {
  // ignore: non_constant_identifier_names
  int _current_index=0;
 final PageController _controller=PageController(
    initialPage: 0,
  );
   final List<StartData> data=[
    StartData(imageUrl:"assets/images/1.png" ),
    StartData(imageUrl:'assets/images/2.png' ),
    StartData(imageUrl:'assets/images/3.png' ),
    StartData(imageUrl:'assets/images/4.png' ),
    StartData(imageUrl:'assets/images/5.png' ),

 ];
    @override
  void initState() {
    super.initState();

    Timer.periodic(const Duration(seconds: 4), (timer) {
      if(_current_index<4){_current_index++;
      _controller.animateToPage(_current_index,
      duration: const Duration(milliseconds: 500), curve: Curves.easeIn);}
      });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            alignment:  const Alignment(0,.9),
            children:[ Builder(
              builder: (cotx) {
                return PageView(
                  controller: _controller,
                  children: data.map((e) => Container(
                    
                     decoration:  const BoxDecoration(
                    gradient:LinearGradient(colors:[
                      Color.fromARGB(255, 240, 126, 135),
                      Color.fromARGB(255, 205, 193, 237)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter)),
                  child: Builder(
                    builder: (ctx) {
                      return Column(
                        children: [
                        const SizedBox(height: 30,),
                            Image.asset(e.imageUrl,width: MediaQuery.of(ctx).size.width/1.5,
                            height:  MediaQuery.of(ctx).size.height/1.2
                            ,fit: BoxFit.fill,),
                        ],
                      );
                    }
                  ),
                  
                  ),).toList(),
                  onPageChanged: (val) => setState(() {
                  _current_index=val;
                  if(_current_index==4){
                    Future.delayed(const Duration(seconds: 1), () {
        Navigator.pushReplacement(context,
              MaterialPageRoute(builder:
                (context) =>const Home()
              )
          );
      });
                   
                  }
                }),
                
                );
              }
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Indicator(_current_index),
              SizedBox(width: MediaQuery.of(context).size.width/4.5,),
               
            InkWell(onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Home();
               }));
            },
             child: const Row(
              children:[
                 Text('Skip',style:TextStyle(
                  color: Color.fromARGB(255, 84, 82, 82),
                  fontWeight: FontWeight.bold
                ) ,),
                Icon(Icons.double_arrow_rounded,color:Color.fromARGB(255, 84, 82, 82) ,),
                SizedBox(width: 15,)
              ],
            )),
            ],
            
            
          ),
        ]),
      ),
    ),);
  }
}