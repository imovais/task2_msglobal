import 'package:flutter/material.dart';

class ThirdView extends StatelessWidget {
  const ThirdView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('hello'),
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey.shade500,
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                width: 100,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  color: Colors.red,
                ),
              ),
              Positioned(
                child: CustomPaint(
                  size: Size(
                      double.infinity,
                      size.width /
                          2), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
              ),
            ],
          ),
        ));
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(0, 0);
    path_0.lineTo(0, size.height * 0.3366667);
    path_0.lineTo(size.width * 0.2500000, size.height * 0.8366667);
    path_0.lineTo(size.width, size.height * 0.3366667);
    path_0.lineTo(size.width, 0);
    path_0.lineTo(0, 0);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
