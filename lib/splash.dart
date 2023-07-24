
import 'package:easy_splash_screen/easy_splash_screen.dart';
import 'package:task_5/startpage.dart';
import '../home.dart';
import 'package:flutter/material.dart';
class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (ctx) {
        return Scaffold(
          body: EasySplashScreen(
          logo:   Image.asset("assets/images/yoga.png",width: MediaQuery.of(ctx).size.width/1.5,
                               height:  MediaQuery.of(ctx).size.height/1.2
                               ,fit: BoxFit.fill,),
                               logoWidth: MediaQuery.of(ctx).size.width/4,
                               gradientBackground: LinearGradient(colors:[
              Color.fromARGB(255, 254, 121, 132),
              Color.fromARGB(255, 205, 193, 237)],
              
              begin: Alignment.bottomCenter,
            end: Alignment.topCenter
              ),
         
          
          showLoader: false,
          loadingText: Text("Loading..."),
          navigator: Start_Page(),
          durationInSeconds: 5,
        ),
        );
      }
    );
  }
}