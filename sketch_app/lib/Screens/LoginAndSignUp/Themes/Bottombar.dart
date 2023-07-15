import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 1.1,
      width: width,
      // color: Colors.blue.shade700,
      child: CustomPaint(
        painter: BackgroundPaint(),
      ),
    );
  }
}

class BackgroundPaint extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final height = size.height;
    final width = size.width;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 8.0
      ..isAntiAlias = true
      ..color = Colors.blue.shade800;
    Path myPath = Path();

    myPath.moveTo(width * .1, height * 1.1);
    // myPath.quadraticBezierTo(width * .7, height * .7, width * .5, height * .85);
    myPath.quadraticBezierTo(
        width * .565, height * .8, width * .565, height * .8);

    myPath.quadraticBezierTo(
        width * .7, height * .72, width * .85, height * .8);
    myPath.lineTo(
      width * 1,
      height * .88,
    );
    myPath.quadraticBezierTo(width * 1, height * 1.1, width * 1, height * 1.1);
    myPath.quadraticBezierTo(width * 1, height * 1.1, width * 2, height * 1.1);
    // myPath.lineTo(
    //   width * 1,
    //   height * .88,
    // );

    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
