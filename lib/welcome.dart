import 'package:flutter/material.dart';

import 'package:task_5/home.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:  const BoxDecoration(
            gradient:LinearGradient(colors:[
              Color.fromARGB(255, 254, 121, 132),
              Color.fromARGB(255, 205, 193, 237)
            ],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter)),
        child: Column(
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: deprecated_member_use
            Text('Seattle BMI ',style: Theme.of(context).textTheme.headline3,),
                  Row(
                   
                    children: [
                    Image.asset("assets/images/yoga.png",width: MediaQuery.of(context).size.width,)
                  ],),
                  // ignore: deprecated_member_use
                  Text('Welcome To My App',style: Theme.of(context).textTheme.headline3,),
                   const SizedBox(height: 15,),
                    Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
             SizedBox(
              width: 120,
              height: 45,
               child: ElevatedButton(onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (context){
                return const Home();
               }))
               ,
               style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll( Color.fromARGB(255, 255, 255, 255)
                ,),
                fixedSize: MaterialStatePropertyAll(Size.infinite),
                
               ), child: const Text("Start",
               style: TextStyle(fontSize: 20,color: Color.fromARGB(255, 254, 121, 132)),),
               
               
               ),
             )
          ]
        )]
      ),
     ) );
  }
}