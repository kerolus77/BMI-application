import 'dart:math';
import 'package:flutter/material.dart';
import 'package:task_5/result.dart';
import 'package:task_5/shape.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isMale=true;
  double height=170.0;
  double weight=50;
  int age=20;
var scaffoldkey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldkey,
      extendBodyBehindAppBar: true,
      backgroundColor:     const Color.fromARGB(255, 205, 193, 237),
      appBar: AppBar(
        elevation:1,
        title:Text('Seattle BMI',style: Theme.of(context).textTheme.headline2,) ,
        centerTitle: true,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 245, 151, 166)),
        leading: IconButton( 
        onPressed: (){
         setState(() {
           return scaffoldkey.currentState?.openDrawer();
         });
        }, icon: const Icon(Icons.filter_list),
        ),
       
      ),
      body: SafeArea(
        child: Container(
          decoration: const BoxDecoration(
            gradient:LinearGradient(colors:[
              Color.fromARGB(255, 254, 121, 132),
              Color.fromARGB(255, 205, 193, 237),
            ],
            begin:  Alignment.bottomCenter,
            end: Alignment.topCenter
            ) ),
          child: Stack(
            children: [
              Column(
                children: [
                 
                  Row(
                   mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                       color: const Color.fromARGB(0, 255, 193, 7),
                        width: 260,
                     height: 150, 
                     child: CustomPaint(
                        painter: RPSCustomPainter2(),
                         ),
                        ),
                    ],
                  ),

                   Row(
                    
                    children: [
                      Container(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        width: 240,
                     height: 250, 
                     child: CustomPaint(
                        painter: RPSCustomPainter(),
                         ),
                        ),
                    ],
                  )
                ],
              ),
              Column(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Gender(context,'male'),
                          const SizedBox(width: 15),
                            Gender(context,'female'),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Container(
                         decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(235, 255, 255, 255)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    
                    children: [
                      Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: [Text('Height',style: Theme.of(context).textTheme.headline2,)],
                      ),
                      const SizedBox(height: 5,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        children: [
                           Text(height.toStringAsFixed(1),style: Theme.of(context).textTheme.headline1),
                           const Text('CM',style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                            
                           ),)
                        ],
                      ),
                      Slider(value: height, onChanged: (value){
                          setState(() {
                             height=value;
                          });
                      },
                      max: 220,
                      min: 70,
                      activeColor:  const Color.fromARGB(255, 245, 151, 166),
                      inactiveColor: Colors.white,
                    thumbColor: Colors.white,
                      )
                    ]),
                      )
                      ,
                    )
                    ),
                    Expanded(child:Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        children: [
                          Info(context, 'age'),
                          const SizedBox(width: 15,),
                          Info(context, 'weight')
                    
                        ],
                      ),
                    ) ,),
                    Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                     // height: MediaQuery.of(context).size.height/16,
                     
                      child:
                      Column(
                       
                        children: [
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text('Calculate Your Body...',style: TextStyle(color: Colors.white,fontSize: 16),),
                            ],
                          ),
                          const SizedBox(height: 10,),
                          Row(
                             mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed: () {
                                var result = weight / pow(height / 100, 2);
                                showDialog(
                                  context: context, 
                                builder:(BuildContext context)
                                {
                                  return AlertDialog(
                                       content: Result(result:result ,),
                                       shape: RoundedRectangleBorder(borderRadius: BorderRadiusDirectional.circular(10)),
                                  );
                                }
                                );
                              },
                              backgroundColor: Colors.white,
                              child:const Icon(Icons.heart_broken,color: Color.fromARGB(255, 245, 151, 166),
                              size: 40,
                              ) ,
                              
                              )
                            ],
                          ),
                          const SizedBox(height: 20,)
                        ],
                      ) ),
                    
                ],
              )
            ],
          ),
        ),
      ),
    drawer: Drawer(backgroundColor: Color.fromARGB(255, 255, 255, 255),child: Container(),
    

    ),
    );
  }
   // ignore: non_constant_identifier_names
   Expanded Gender(BuildContext context, String type){
     return Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            isMale=(type=='male')?true:false;
          });
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
           color: (isMale && type == 'male') || (!isMale && type == 'female')
                ?const Color.fromARGB(255, 197, 183, 238)
                : const Color.fromARGB(186, 255, 255, 255),
            ),
         child: Stack(
          alignment: Alignment.center,
          children: [
            Column(
              children: [
                Row(
                  children: [
                       // ignore: avoid_unnecessary_containers
                       Container(
                  
                   child: CustomPaint(
                      painter: Semicircle(),
                       ),
                      ),
                  ],
                )
              ],
            ),
             Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(type == 'male' ? Icons.male : Icons.female, size: 70),
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

 // ignore: non_constant_identifier_names
 Expanded Info(BuildContext context, String type){
     return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
         color:  const Color.fromARGB(255, 255, 255, 255),
          ),
       child: Stack(
        children: [
          Column(
            children: [
              Row(
                children: [
                     // ignore: avoid_unnecessary_containers
                     Container(
                
                 child: CustomPaint(
                    painter: Semicircle(),
                     ),
                    ),
                ],
              )
            ],
          ),
           Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(
            type=='age'?'Age':"Weight",
            style:Theme.of(context).textTheme.headline2 ,
           ),
            const SizedBox(height: 10),
            Text(
              type == 'age' ? '$age' : '$weight',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  heroTag: type=='age'?"age--":'weight--',
                  onPressed: (){
                    setState(() {
                      type=='age'?age--:weight--;
                    });
                  },
                mini: true,
                
                child: const Icon(Icons.remove,color: Color.fromARGB(255, 245, 151, 166)),),
                const SizedBox(width: 8,),
                  FloatingActionButton(
                    backgroundColor: Colors.white,
                     heroTag: type=='age'?"age++":'weight++',
                    onPressed: (){ setState(() {
                      type=='age'?age++:weight++;
                    });},
                mini: true,
                child: const Icon(Icons.add,color: Color.fromARGB(255, 245, 151, 166)),),
              ],
            )
          ],
        ),
        ],
       )
      )
    
    );
 }


   
}

   


