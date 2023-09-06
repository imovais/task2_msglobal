// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task2_msglobal/Constant/colors.dart';
import 'package:task2_msglobal/Screen_First/first_controller.dart';
import 'package:task2_msglobal/second_Screen/second_view.dart';

class FirstView extends StatelessWidget {
  FirstView({super.key});

  final FirstController c = Get.put(FirstController());

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          foregroundColor: Colors.blue,
          centerTitle: true,
          title: const Text('Pickup Date'),
          elevation: 10,
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
        body: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 10, right: 10, left: 20),
            child: ListTile(
              title: Center(
                child: Text(
                  'When would you like your pickup?',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ),
              trailing: Icon(Icons.calendar_month, color: Colors.blue),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CalenderPickups(
                size: size,
                color: Colors.grey,
                day: 'Fri',
                date: '25 Jun \n Yesterday',
              ),
              CalenderPickups(
                size: size,
                color: Colors.blue,
                day: 'Sat',
                date: '26 Jun \n Today',
              ),
              CalenderPickups(
                size: size,
                color: Colors.white,
                day: 'Sun',
                isheaderlight: true,
                date: '27 Jun \n Tomorrow',
              ),
              CalenderPickups(
                size: size,
                color: Colors.red,
                day: 'Mon',
                date: '29 Jun \n Blockday',
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Center(
                child: Text(
              'Available Time Slots',
              style: TextStyle(fontWeight: FontWeight.w800),
            )),
          ),
          SizedBox(
            width: double.infinity,
            child: Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                children: List.generate(
                    5,
                    (index) => GestureDetector(
                        onTap: () {
                          c.isselected[index] = !c.isselected[index];
                          print(c.isselected[index]);
                        },
                        child: Obx(
                          () => Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 5, vertical: 5),
                              width: size.width / 3.5,
                              height: 40,
                              decoration: BoxDecoration(
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 1), blurRadius: 2)
                                  ],
                                  color: c.isselected[index] == true
                                      ? Colors.blue
                                      : Colors.white,
                                  borderRadius: BorderRadius.circular(10)),
                              child: Center(
                                  child: Text(
                                c.item[index].toString(),
                                style: TextStyle(
                                    fontSize: 12,
                                    color: c.isselected[index] == true
                                        ? Colors.white
                                        : Colors.black),
                              ))),
                        ))),
              ),
            ),
          ),
          Divider(),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 7,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Repear Pickup'),
                      Obx(() => Switch(
                            value: c.switchs.value,
                            onChanged: (value) {
                              c.switchs.value = !c.switchs.value;
                              print(c.switchs.value);
                            },
                          ))
                    ],
                  ),
                ),
              ),
            ),
          ),

          //
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 20,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Text(
                textAlign: TextAlign.start,
                'How Often Repeat?',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 7,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Obx(() => SizedBox(
                          width: double.infinity,
                          child: DropdownMenu(
                              initialSelection: c.timeslot[0],
                              inputDecorationTheme:
                                  InputDecorationTheme(border: null),
                              width: size.width / 1.1,
                              dropdownMenuEntries: List.generate(
                                  5,
                                  (index) => DropdownMenuEntry(
                                      value: c.timeslot[index],
                                      label: '${c.timeslot[index]}'))),
                        ))),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Card(
                elevation: 7,
                child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: DropdownMenu(
                          initialSelection: 0,
                          inputDecorationTheme:
                              InputDecorationTheme(border: null),
                          width: size.width / 1.1,
                          dropdownMenuEntries: List.generate(
                              5,
                              (index) => DropdownMenuEntry(
                                  value: index, label: '${index + 1}'))),
                    )),
              ),
            ),
          ),

          SizedBox(
            height: 10,
          ),

          GestureDetector(
            onTap: () => Get.to(SecondView()),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          )
        ]));
  }
}

class CalenderPickups extends StatelessWidget {
  const CalenderPickups({
    super.key,
    required this.size,
    required this.color,
    required this.day,
    required this.date,
    this.isheaderlight = false,
  });

  final Color color;
  final String day;
  final String date;
  final bool isheaderlight;

  final Size size;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Card(
        elevation: 20,
        child: Container(
          width: size.width / 5,
          height: size.width / 5,
          color: Colors.white,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: color,
                  child: Center(
                    child: Text(day,
                        style: TextStyle(
                            fontSize: 16,
                            color: isheaderlight == false
                                ? Colors.white
                                : Colors.black)),
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      date,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
