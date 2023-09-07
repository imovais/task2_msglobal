import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_msglobal/Screen_First/first_veiw.dart';
import 'package:task2_msglobal/second_Screen/second_view.dart';

import 'Screen_First/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SecondView(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
