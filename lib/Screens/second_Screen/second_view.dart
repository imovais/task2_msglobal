import 'dart:ui';

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
          //title: const Text('Pickup Date'),
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
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(
                top: AppBar().preferredSize.height + size.width / 4,
                left: 15,
                right: 15,
              ),
              child: SingleChildScrollView(
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
            ),
            SizedBox(
              height: AppBar().preferredSize.height + size.width,
            ),
            Stack(alignment: Alignment.topLeft, children: [
              CustomPaint(
                size: Size(
                    double.infinity,
                    size.width /
                        2), //You can Replace [WIDTH] with your desired width for Custom Paint and height will be calculated automatically
                painter: RPSCustomPainter(),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                width: size.width / 1.5,
                height: size.width,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      child: Icon(Icons.message),
                    ),
                    Text(
                      'Hi There!',
                      style: TextStyle(
                          fontSize: 22,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      'Welcome to Online service. how can we help you todays?',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ]),
            Positioned(
              bottom: 0,
              right: 0,
              width: size.width,
              child: Container(
                margin: EdgeInsets.only(bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 1),
                width: size.width,
                height: AppBar().preferredSize.height,
                //color: Colors.grey.shade200,
                child: Row(
                  children: [
                    Expanded(
                      flex: 4,
                      child: Card(
                        elevation: 10,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            color: Colors.white,
                            child: const Center(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5, left: 10),
                                child: TextField(
                                    textAlignVertical: TextAlignVertical.center,
                                    textAlign: TextAlign.left,
                                    decoration: InputDecoration(
                                        hintText: 'Write a reply',
                                        enabledBorder: InputBorder.none,
                                        border: InputBorder.none)),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.emoji_emotions_outlined),
                          Icon(Icons.image_outlined),
                          Icon(Icons.attach_file_rounded),
                          Icon(Icons.send)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ]),
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
