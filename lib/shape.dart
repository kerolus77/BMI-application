import 'package:flutter/material.dart';

class RPSCustomPainter extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 230, 223, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 20;
     
         
    Path path0 = Path();
    path0.moveTo(0,0);
    path0.lineTo(size.width*1/2-30,size.height*1/2-30);
        path0.quadraticBezierTo(size.width*1/2,size.height*1/2,size.width*1/2-20,size.height*1/2+30);
    path0.lineTo(size.width*1/2-20,size.height*1/2+30);
   // path0.quadraticBezierTo(size.width*1/2,size.height*1/2,size.width*1/2-20,size.height*1/2+20);
    //path0.quadraticBezierTo(size.width*1/2,size.height*1/4,size.width*1/2-10,size.height*1/4);
    path0.lineTo(0,size.height);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}

 class RPSCustomPainter2 extends CustomPainter{
  
  @override
  void paint(Canvas canvas, Size size) {
    
    

  Paint paint0 = Paint()
      ..color = const Color.fromARGB(255, 230, 223, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = 20;
     
         
    Path path0 = Path();
    path0.moveTo(size.width,-10);
    path0.lineTo(size.width*1/2-30,size.height*1/3-50);
        path0.quadraticBezierTo(size.width*1/2-50,size.height*1/3-20,size.width*1/2-20,size.height*1/3+10);
    path0.lineTo(size.width*1/2-20,size.height*1/3+10);
   // path0.quadraticBezierTo(size.width*1/2,size.height*1/2,size.width*1/2-20,size.height*1/2+20);
    //path0.quadraticBezierTo(size.width*1/2,size.height*1/4,size.width*1/2-10,size.height*1/4);
    path0.lineTo(size.width,size.height*4/5+30);
    path0.close();

    canvas.drawPath(path0, paint0);
  
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
  
}
class Semicircle extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   final paint=Paint()
   ..color = const Color.fromARGB(192, 176, 167, 223)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 20;
   final arcl=Path();
   arcl.moveTo(size.width*3/4, 0);
   arcl.arcToPoint(Offset(size.width, size.height*1/4),
   radius: const Radius.circular(50),
   clockwise: false
   );
   canvas.drawPath(arcl,paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
   return false;
  }
}
