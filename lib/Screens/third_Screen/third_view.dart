// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:task2_msglobal/Screens/third_Screen/third_controller.dart';

import '../../Models/wash.dart';

class ThirdView extends StatelessWidget {
  ThirdView({super.key});

  List washlist = [
    WashScreenModel(
        title: '5 TShirt Dry and Clean', rate: 60, image: 'images/shirt.jpg'),
    WashScreenModel(
        title: 'Shirt jeansDry and Cleaning',
        rate: 40,
        image: 'images/pant.jpg'),
    WashScreenModel(
        title: '5 Jeans Dry & Clean', rate: 80, image: 'images/baby.jpg'),
    WashScreenModel(
        title: '2 Uniform Dry & Clean', rate: 50, image: 'images/frok.jpg'),
    WashScreenModel(
        title: '2 Linen Dry & Clean', rate: 80, image: 'images/towel.jpg')
  ];

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
      body: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 10,
        ),
        itemCount: washlist.length,
        itemBuilder: (context, index) {
          var item = washlist[index] as WashScreenModel;

          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: size.width,
            height: size.width / 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: const Offset(1, 1),
                      spreadRadius: 1,
                      blurRadius: 3,
                      color: Colors.grey.shade600)
                ]),
            child: Row(
              children: [
                Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover, image: AssetImage(item.image)),
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(1, 1),
                                spreadRadius: 1,
                                blurRadius: 3,
                                color: Colors.grey.shade600)
                          ]),
                    )),
                Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item.title.toString(),
                                style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text(
                                r'$' + item.rate.toString(),
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          Text(
                            r'You will get $10 off buy this package',
                            style: TextStyle(fontSize: 11.sp),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'images/wash.png'))),
                                      height: 40.w,
                                      width: 40.w),
                                  Text(
                                    'Wash',
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'images/dryclean.png'))),
                                      height: 40.w,
                                      width: 40.w),
                                  Text(
                                    'DryCleaning',
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Container(
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              fit: BoxFit.cover,
                                              image: AssetImage(
                                                  'images/iron.png'))),
                                      height: 40.w,
                                      width: 40.w),
                                  Text(
                                    'Iron',
                                    style: TextStyle(
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w600),
                                  )
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
