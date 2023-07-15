import 'package:flutter/material.dart';

class MidBodyBar extends StatelessWidget {
  const MidBodyBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height / 1.1,
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

    myPath.moveTo(width * .77, height * .6);
    myPath.lineTo(
      width * .377,
      height * .85,
    );
    myPath.quadraticBezierTo(
        width * .28, height * .91, width * .15, height * 0.86);
    myPath.lineTo(
      width * .55,
      height * .6,
    );
    myPath.lineTo(
      width * .77,
      height * .6,
    );

    //   myPath.quadraticBezierTo(
    //       width * .95, height * .4, width * .815, height * .48);
    //
    //   myPath.lineTo(
    //     width * 0,
    //     height * 1,
    //   );
    //   myPath.quadraticBezierTo(width * 0, height * 1, width * 0, height * 0);
    canvas.drawPath(myPath, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}
