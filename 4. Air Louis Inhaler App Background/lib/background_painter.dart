import 'package:flutter/material.dart';
import 'package:air_louis_inhaler/colors.dart';

class BackgroundPainter extends CustomPainter {

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint();

    double width = size.width, height = size.height;

    Path path = Path();



    path.lineTo(0.0,height/2.3);
    path.quadraticBezierTo(width/4.5, height/3, width/2, 0.0);
    path.close();
    paint.color = purpleColor;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0.0,height/8);
    path.lineTo(width/5,0.0);
    path.close();
    paint.color = mintColor;
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(18.0, height);
    path.quadraticBezierTo(width/2.7, height/6, width-20, 0.0);
    path.lineTo(width, 0.0);
    path.lineTo(width, height/2);
    path.quadraticBezierTo(width/1.4, height/1.8, width/2.8, height);
    path.close();
    paint.color = strongRedColor;
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(0.0, height);
    path.lineTo(0.0,height/1.4);
    path.quadraticBezierTo(width/4, height/1.3, width/2, height);
    path.close();
    paint.color = weakRedColor;
    canvas.drawPath(path, paint);




  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

}