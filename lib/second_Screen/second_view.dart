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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
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
