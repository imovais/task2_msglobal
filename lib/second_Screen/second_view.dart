import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          centerTitle: true,
          title: const Text('Pickup Date'),
          elevation: 0,
          shadowColor: Colors.blue,
          leading: const Icon(Icons.arrow_back),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.menu,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SizedBox(
            width: size.width,
            height: size.height,
            child: Stack(children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    Chatbubble(size: size),
                    ChatbubbleLeft(size: size),
                    Chatbubble(size: size),
                    ChatbubbleLeft(size: size),
                    ChatbubbleLeft(size: size),
                    Chatbubble(size: size),
                    ChatbubbleLeft(size: size),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: CustomPaint(
                  size: Size(
                      double.infinity,
                      size.width /
                          2), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                  painter: RPSCustomPainter(),
                ),
              ),
            ]),
          ),
        ));
  }
}

class Chatbubble extends StatelessWidget {
  const Chatbubble({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.centerRight,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            padding: const EdgeInsets.all(10),
            width: size.width / 2,
            height: size.width / 6,
            color: Colors.blue,
            child: const Text(
              'Lorem Ipsum is simply dummy text of the.',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

class ChatbubbleLeft extends StatelessWidget {
  const ChatbubbleLeft({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Align(
        alignment: Alignment.centerLeft,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('images/pic.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Sunny khan'),
                        Text(
                          'Data',
                          style: TextStyle(color: Colors.grey.shade500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(
                  margin: const EdgeInsets.all(0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    width: size.width / 2,
                    height: size.width / 6,
                    color: Colors.grey.shade200,
                    child: const Text(
                      'Lorem Ipsum is simply dummy text of the .',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RPSCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 8, 138, 228)
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
