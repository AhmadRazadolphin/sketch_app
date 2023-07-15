import 'package:flutter/material.dart';

class topBar extends StatelessWidget {
  const topBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      width: width,
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

    myPath.moveTo(width * .37, height * 0);
    myPath.quadraticBezierTo(
        width * .37, height * 0, width * .6, height * .135);

    myPath.quadraticBezierTo(
        width * .7, height * .2, width * .82, height * .12);
    myPath.lineTo(
      width * 1,
      height * 0,
    );
    myPath.quadraticBezierTo(width * 1, height * 0, width * 0.363, height * 0);
    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
