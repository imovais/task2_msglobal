import 'package:flutter/material.dart';
import 'package:task2_msglobal/Screens/second_Screen/second_view.dart';
import 'package:task2_msglobal/Screens/third_Screen/third_view.dart';

class PageViewz extends StatelessWidget {
  const PageViewz({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      children: [const SecondView(), ThirdView()],
    ));
  }
}
