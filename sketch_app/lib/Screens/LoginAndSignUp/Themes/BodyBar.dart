import 'package:flutter/material.dart';

class BodyBar extends StatelessWidget {
  const BodyBar({Key? key}) : super(key: key);

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
      ..isAntiAlias = true
      ..color = Colors.white;
    Path myPath = Path();

    myPath.moveTo(width * .3, height * 0);
    myPath.quadraticBezierTo(width * .3, height * 0, width * .8, height * 0.3);

    myPath.quadraticBezierTo(
        width * .95, height * .4, width * .815, height * .48);

    myPath.lineTo(
      width * 0,
      height * 1,
    );
    myPath.quadraticBezierTo(width * 0, height * 1, width * 0, height * 0);
    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
