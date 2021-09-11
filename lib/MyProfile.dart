import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class MyProfile extends StatelessWidget {
  static const routeName = '/MyProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavBar(),
        appBar: NewGradientAppBar(
            title: Container(
              height: 9.h,
              width: 35.w,
              //color: Colors.black,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Image.asset(
                  'assets/image/dpu.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            gradient: LinearGradient(colors: [
              Colors.blue.shade300,
              Colors.blue.shade800,
            ])),
        body: SafeArea(
            child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        bottom: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.width / 30),
                    child: Column(
                      children: [
                        Container(
                          height: 4.h,
                          width: 100.w,
                          child: Text(
                            'My Profile',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        SizedBox(
                          height: .2.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 60,
                            right: MediaQuery.of(context).size.width / 60,
                            bottom: MediaQuery.of(context).size.width / 30,
                          ),
                          child: Stack(children: [
                            Column(
                              children: [
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  color: Colors.lightBlue.shade500,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: SizedBox.shrink(),
                                        childrenPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                        ),
                                        title: Row(
                                          children: [
                                            Icon(
                                              Icons.person_outline_sharp,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            Text(
                                              '  Personal Details',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 60.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Container(
                                                    height: 57.h,
                                                    width: 80.w,
                                                    decoration:
                                                        new BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black54,
                                                          offset: const Offset(
                                                            0.0,
                                                            3.0,
                                                          ),
                                                          blurRadius: 6,
                                                          spreadRadius: 1,
                                                        ), //BoxShadow
                                                        //BoxShadow
                                                      ],
                                                      image:
                                                          new DecorationImage(
                                                        image: new AssetImage(
                                                            "assets/image/Untitled.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                              height: 54.h,
                                                              width: 70.w,
                                                              //         color: Colors.black38,
                                                              child: Stack(
                                                                children: [
                                                                  Column(
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .spaceBetween,
                                                                    children: [
                                                                      Center(
                                                                        child:
                                                                            Container(
                                                                          color:
                                                                              Colors.white,
                                                                          height:
                                                                              15.h,
                                                                          width:
                                                                              30.w,
                                                                          child:
                                                                              Center(
                                                                            child: Container(
                                                                                //color: Colors.red,
                                                                                height: 14.h,
                                                                                width: 28.w,
                                                                                decoration: new BoxDecoration(
                                                                                    image: new DecorationImage(
                                                                                  image: new AssetImage("assets/image/Photo.jpg"),
                                                                                  fit: BoxFit.fill,
                                                                                ))),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Center(
                                                                          child:
                                                                              Text(
                                                                            'AMARNATH BARANWAL',
                                                                            style:
                                                                                TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
                                                                          ),
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.message_outlined,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'amar.aiti49@gmail.com',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.call,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    '9140776548',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.cake,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    '20/12/1999',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.medical_services,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'B+',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.home,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'Uttar Pradesh',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.people,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'Baniya',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                      Container(
                                                                        height:
                                                                            4.h,
                                                                        width:
                                                                            60.w,
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.start,
                                                                          children: [
                                                                            Container(
                                                                              width: 15.w,
                                                                              height: 4.h,
                                                                              // color:
                                                                              //     Colors.red,
                                                                              child: Center(
                                                                                child: Icon(
                                                                                  Icons.cast_for_education,
                                                                                  size: 15.sp,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 15.w,
                                                                                height: 4.h,
                                                                                // color:
                                                                                //     Colors.red.shade200,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'MCA',
                                                                                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  )
                                                                ],
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  color: Colors.lightBlue.shade500,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: SizedBox.shrink(),
                                        childrenPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                        ),
                                        title: Row(
                                          children: [
                                            Icon(
                                              Icons.home_filled,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            Text(
                                              '  Parent\'s Information',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 60.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Container(
                                                    height: 57.h,
                                                    width: 80.w,
                                                    decoration:
                                                        new BoxDecoration(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            Colors.black26,
                                                            Colors.black26
                                                          ]),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black54,
                                                          offset: const Offset(
                                                            0.0,
                                                            3.0,
                                                          ),
                                                          blurRadius: 6,
                                                          spreadRadius: 1,
                                                        ), //BoxShadow
                                                        //BoxShadow
                                                      ],
                                                      image:
                                                          new DecorationImage(
                                                        image: new AssetImage(
                                                            "assets/image/Untitled.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                              height: 50.h,
                                                              width: 70.w,
                                                              // color: Colors
                                                              //     .black38,
                                                              child: Stack(
                                                                children: [
                                                                  Center(
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Mother\'s Name :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'SMT RINA DEVI',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Father\'s Name :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'MR BUDDHI PRAKASH BARANWAL',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Residence Contact :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    '9236533966',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Father\'s Call No : ',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'N/A',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Office Contact No :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'N/A',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Email address :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'amar.aiti49@gmail.com',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Designation :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'BUSINESSMAN',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  color: Colors.lightBlue.shade500,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: SizedBox.shrink(),
                                        childrenPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                        ),
                                        title: Row(
                                          children: [
                                            Icon(
                                              Icons.local_post_office_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            Text(
                                              '  Official Details',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 60.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Container(
                                                    height: 57.h,
                                                    width: 80.w,
                                                    decoration:
                                                        new BoxDecoration(
                                                      gradient: LinearGradient(
                                                          colors: [
                                                            Colors.black26,
                                                            Colors.black26
                                                          ]),
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black54,
                                                          offset: const Offset(
                                                            0.0,
                                                            3.0,
                                                          ),
                                                          blurRadius: 6,
                                                          spreadRadius: 1,
                                                        ), //BoxShadow
                                                        //BoxShadow
                                                      ],
                                                      image:
                                                          new DecorationImage(
                                                        image: new AssetImage(
                                                            "assets/image/Untitled.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                              height: 50.h,
                                                              width: 70.w,
                                                              // color: Colors
                                                              //     .black38,
                                                              child: Stack(
                                                                children: [
                                                                  Center(
                                                                    child:
                                                                        Column(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Category :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'Open',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Religion :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'Hindu',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Course :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'MCA',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Class : ',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'T.Y. MCA Track-l',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Student ID :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    '19640001',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Roll No :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    '405',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          height:
                                                                              6.5.h,
                                                                          width:
                                                                              50.w,
                                                                          // color:
                                                                          //     Colors.blueAccent,
                                                                          child:
                                                                              Column(
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.centerLeft,
                                                                                child: Container(
                                                                                  height: 2.5.h,
                                                                                  width: 40.w,
                                                                                  //color: Colors.red,
                                                                                  child: Align(
                                                                                    alignment: Alignment.centerLeft,
                                                                                    child: Text(
                                                                                      'Status Type :',
                                                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12.sp),
                                                                                    ),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Container(
                                                                                decoration: BoxDecoration(border: Border.all(color: Colors.black26, width: 1.25), gradient: LinearGradient(colors: [Colors.white, Colors.white])),
                                                                                height: 4.h,
                                                                                width: 50.w,
                                                                                child: Align(
                                                                                  alignment: Alignment.centerLeft,
                                                                                  child: Text(
                                                                                    'Management',
                                                                                    style: TextStyle(fontSize: 12.sp),
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  )
                                                                ],
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Card(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(0.0),
                                  ),
                                  color: Colors.lightBlue.shade500,
                                  child: SingleChildScrollView(
                                    physics: BouncingScrollPhysics(),
                                    child: Theme(
                                      data: Theme.of(context).copyWith(
                                          dividerColor: Colors.transparent),
                                      child: ExpansionTile(
                                        trailing: SizedBox.shrink(),
                                        childrenPadding: EdgeInsets.only(
                                          left: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          right: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                          bottom: MediaQuery.of(context)
                                                  .size
                                                  .width /
                                              99,
                                        ),
                                        title: Row(
                                          children: [
                                            Icon(
                                              Icons.computer_rounded,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                            Text(
                                              '  My Achievements',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 60.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Center(
                                                  child: Container(
                                                    height: 57.h,
                                                    width: 80.w,
                                                    decoration:
                                                        new BoxDecoration(
                                                      boxShadow: [
                                                        BoxShadow(
                                                          color: Colors.black54,
                                                          offset: const Offset(
                                                            0.0,
                                                            3.0,
                                                          ),
                                                          blurRadius: 6,
                                                          spreadRadius: 1,
                                                        ), //BoxShadow
                                                        //BoxShadow
                                                      ],
                                                      image:
                                                          new DecorationImage(
                                                        image: new AssetImage(
                                                            "assets/image/Untitled.png"),
                                                        fit: BoxFit.fill,
                                                      ),
                                                    ),
                                                    child: Center(
                                                      child: Stack(
                                                        children: [
                                                          Container(
                                                              height: 54.h,
                                                              width: 70.w,
                                                              //         color: Colors.black38,
                                                              child: Stack(
                                                                children: [],
                                                              ))
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
