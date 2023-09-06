import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_msglobal/Screen_First/first_veiw.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstView(),
      theme: ThemeData(primarySwatch: Colors.blue),
    );
  }
}
