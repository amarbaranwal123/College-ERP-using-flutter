// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);
  static const routeName = '/DashBoard';
  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      key: _scaffoldKey,
      // extendBodyBehindAppBar: true,
      drawer: NavBar(),

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
                  height: 123.5.h,
                  //color: Colors.black,
                  width: 100.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ), //BoxShadow
                      //BoxShadow
                    ],
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width / 12,
                            right: MediaQuery.of(context).size.width / 12,
                            bottom: MediaQuery.of(context).size.width / 12,
                            top: MediaQuery.of(context).size.width / 65),
                        child: Container(
                          width: 100.w,
                          height: 120.h,
                          //    color: Colors.blue,
                          child: Stack(
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      //        color: Colors.yellow,
                                      decoration: BoxDecoration(
                                        border: Border.all(),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.black12,
                                            offset: const Offset(
                                              0.0,
                                              0.0,
                                            ),
                                            //blurRadius: 1,
                                            // spreadRadius: 1,
                                          ), //BoxShadow
                                          //BoxShadow
                                        ],
                                      ),
                                      height: 22.h,
                                      width: 38.w,
                                      child: Center(
                                        child: Container(
                                          //color: Colors.red,
                                          height: 21.h,
                                          width: 36.w,
                                          decoration: new BoxDecoration(
                                            border:
                                                Border.all(color: Colors.white),
                                            image: new DecorationImage(
                                              image: new AssetImage(
                                                  "assets/image/Photo.jpg"),
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: .5.h,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                      // color: Colors.pink,
                                      height: 3.h,
                                      width: 38.w,
                                      child: Align(
                                        alignment: Alignment.centerLeft,
                                        child: FittedBox(
                                          fit: BoxFit.contain,
                                          child: Text(
                                            'Amarnath Baranwal',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.sp),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: .25.h,
                                  ),
                                  Container(
                                    // color: Colors.yellow,
                                    height: 30.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        colors: [
                                          Colors.yellow.shade100,
                                          Colors.yellow.shade800,
                                          Colors.yellow.shade800
                                        ],
                                      ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Stack(
                                      children: [
                                        Center(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Container(
                                                height: 4.h,
                                                width: 40.w,

                                                //           color: Colors.white,
                                                child: Center(
                                                  child: Text(
                                                    'Mentor Details',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 15.sp),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 12.h,
                                                width: 30.w,
                                                //  color: Colors.white,
                                                child: CircleAvatar(
                                                  child: ClipOval(
                                                    child: Image.asset(
                                                      'assets/image/Rupali.jpg',
                                                      width: 90,
                                                      height: 90,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                height: 3.h,
                                                width: 50.w,
                                                //      color: Colors.white,
                                                child: Center(
                                                  child: FittedBox(
                                                    fit: BoxFit.contain,
                                                    child: Text(
                                                      'Mrs. Rupali Kalekar',
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 11.5.sp,
                                                          color:
                                                              Colors.black54),
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
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Container(
                                    height: 10.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.lightBlue.shade700,
                                        Colors.lightBlue.shade700,
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'My Profile OPAC',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    )),
                                  ),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Container(
                                    height: 10.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.blue.shade400,
                                        Colors.blue.shade400,
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Lecture Attendence',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                        Text(
                                          'Allocated Subjects',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Container(
                                    height: 10.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.blueGrey.shade500,
                                        Colors.blueGrey.shade500,
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Center(
                                        child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Text(
                                          'Library Due Books : 0',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                        Text(
                                          'New Arrivals',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                        Text(
                                          'Institutional Repository',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16.sp),
                                        ),
                                      ],
                                    )),
                                  ),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Container(
                                    height: 10.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.green.shade400,
                                        Colors.green.shade400,
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Grievance Redressal',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    )),
                                  ),
                                  SizedBox(
                                    height: 2.5.h,
                                  ),
                                  Container(
                                    height: 10.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.blueGrey.shade500,
                                        Colors.blueGrey.shade500,
                                      ]),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black54,
                                          offset: const Offset(
                                            0.0,
                                            0.0,
                                          ),
                                          blurRadius: 1,
                                          spreadRadius: .25,
                                        ), //BoxShadow
                                        //BoxShadow
                                      ],
                                    ),
                                    child: Center(
                                        child: Text(
                                      'Caste Descrimination',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16.sp),
                                    )),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Container(
                  height: 45.h,
                  //color: Colors.black,
                  width: 100.w,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 5.h,
                        //color: Colors.black,
                        width: 100.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade300,
                              Colors.blue.shade500,
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 200,
                                left: MediaQuery.of(context).size.width / 40,
                              ),
                              child: Container(
                                // color: Colors.black,
                                height: 4.h,
                                width: 40.w,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      "Notices & Circulars",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 2.5.h,
                ),
                Container(
                  height: 45.h,
                  //color: Colors.black,
                  width: 100.w,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    gradient: LinearGradient(colors: [
                      Colors.white,
                      Colors.white,
                    ]),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black54,
                        offset: const Offset(
                          0.0,
                          0.0,
                        ),
                        blurRadius: 6,
                        spreadRadius: 1,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Container(
                        height: 5.h,
                        //color: Colors.black,
                        width: 100.w,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Colors.blue.shade300,
                              Colors.blue.shade500,
                            ],
                          ),
                        ),
                        child: Stack(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height / 200,
                                left: MediaQuery.of(context).size.width / 40,
                              ),
                              child: Container(
                                // color: Colors.black,
                                height: 4.h,
                                width: 40.w,
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: FittedBox(
                                    fit: BoxFit.contain,
                                    child: Text(
                                      "Attention",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13.sp),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
