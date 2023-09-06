import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstController extends GetxController {
  RxList<bool> isselected = List.generate(5, (index) => false).obs;

  List item = [
    '7am - 9pm',
    '10am - 12pm',
    '1pm - 2pm',
    '4pm - 6pm',
    '8pm - 10pm'
  ];

  RxList timeslot = [
    'Every Week',
    'Once a Week',
    'Every Day',
    'Every Month',
    'Once a Month'
  ].obs;

  Color boxcolor() {
    if (isselected.value == true) {
      print('blue');
      return Colors.red;
    } else {
      print('white');
      return Colors.white;
    }
  }

  //switch value;
  RxBool switchs = true.obs;
}
