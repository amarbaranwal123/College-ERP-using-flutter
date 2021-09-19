import 'dart:ui';

import 'package:erp/DashBoard.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Library extends StatefulWidget {
  static const routeName = '/Library';

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  String dropdownValue = '-Select-';
  String dropdownValue1 = '10';

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
                child: Container(
                  height: 197.h,
                  color: Colors.grey.shade300,
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.only(
                          left: MediaQuery.of(context).size.width / 45,
                          right: MediaQuery.of(context).size.width / 45,
                          bottom: MediaQuery.of(context).size.width / 30,
                          top: MediaQuery.of(context).size.width / 30),
                      child: Column(
                        children: [
                          Stack(children: [
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
                                          left: .25,
                                          right: 0.25,
                                          bottom: 0.5,
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'New Arrivals',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 34.w,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 40.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [],
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
                          Stack(children: [
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
                                          left: .25,
                                          right: 0.25,
                                          bottom: 0.5,
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'Due Register',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 34.w,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 40.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [],
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
                          Stack(children: [
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
                                          left: .25,
                                          right: 0.25,
                                          bottom: 0.5,
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'Institutional Repository',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 23.w,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 45.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          50),
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        //color: Colors.black12,
                                                        height: 2.5.h,
                                                        child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                                left: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90,
                                                                right: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90),
                                                            child: Text(
                                                              "Course",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      14.sp),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90,
                                                            right: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90),
                                                        child: Container(
                                                          height: 5.h,
                                                          width: 100.w,
                                                          //color: Colors.black26,
                                                          decoration:
                                                              BoxDecoration(
                                                            border: Border.all(
                                                                color: Colors
                                                                    .black26),
                                                          ),
                                                          child: Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                left: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    40,
                                                              ),
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                  "Masters of Computer Application",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          12.5.sp),
                                                                ),
                                                              )),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: .75.h,
                                                      ),
                                                      Container(
                                                        //color: Colors.black12,
                                                        height: 2.5.h,
                                                        child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                                left: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90,
                                                                right: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Subject",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                                Text(
                                                                  " *",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .red,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90,
                                                            right: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90),
                                                        child: Container(
                                                            height: 5.h,
                                                            //color: Colors.black26,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black26)),
                                                            child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15,
                                                                  right: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton<
                                                                        String>(
                                                                  value:
                                                                      dropdownValue,
                                                                  autofocus:
                                                                      true,
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_sharp),
                                                                  // iconSize: 24,
                                                                  //elevation: 16,
                                                                  isExpanded:
                                                                      true,

                                                                  onChanged:
                                                                      (String?
                                                                          newValue) {
                                                                    setState(
                                                                        () {
                                                                      dropdownValue =
                                                                          newValue!;
                                                                    });
                                                                  },
                                                                  items: <
                                                                      String>[
                                                                    '-Select-',
                                                                    'Subject 1',
                                                                    'Subject 2',
                                                                    'Subject 3',
                                                                  ].map<
                                                                      DropdownMenuItem<
                                                                          String>>((String
                                                                      value) {
                                                                    return DropdownMenuItem<
                                                                        String>(
                                                                      value:
                                                                          value,
                                                                      child: Text(
                                                                          value),
                                                                    );
                                                                  }).toList(),
                                                                ),
                                                              ),
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: .75.h,
                                                      ),
                                                      Container(
                                                        //color: Colors.black12,
                                                        height: 2.5.h,
                                                        child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                                left: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90,
                                                                right: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "E-Content Type",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                                Text(
                                                                  " *",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .red,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90,
                                                            right: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90),
                                                        child: Container(
                                                            height: 5.h,
                                                            //color: Colors.black26,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black26)),
                                                            child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15,
                                                                  right: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton<
                                                                        String>(
                                                                  value:
                                                                      dropdownValue,
                                                                  autofocus:
                                                                      true,
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_sharp),
                                                                  // iconSize: 24,
                                                                  //elevation: 16,
                                                                  isExpanded:
                                                                      true,

                                                                  onChanged:
                                                                      (String?
                                                                          newValue) {
                                                                    setState(
                                                                        () {
                                                                      dropdownValue =
                                                                          newValue!;
                                                                    });
                                                                  },
                                                                  items: <
                                                                      String>[
                                                                    '-Select-',
                                                                    'Question Paper',
                                                                    'E-Books',
                                                                  ].map<
                                                                      DropdownMenuItem<
                                                                          String>>((String
                                                                      value) {
                                                                    return DropdownMenuItem<
                                                                        String>(
                                                                      value:
                                                                          value,
                                                                      child: Text(
                                                                          value),
                                                                    );
                                                                  }).toList(),
                                                                ),
                                                              ),
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: .75.h,
                                                      ),
                                                      Container(
                                                        //color: Colors.black12,
                                                        height: 2.5.h,
                                                        child: Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Padding(
                                                            padding: EdgeInsets.only(
                                                                left: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90,
                                                                right: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    90),
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Academic Year",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                                Text(
                                                                  " *",
                                                                  style: TextStyle(
                                                                      color: Colors
                                                                          .red,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding: EdgeInsets.only(
                                                            left: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90,
                                                            right: MediaQuery.of(
                                                                        context)
                                                                    .size
                                                                    .width /
                                                                90),
                                                        child: Container(
                                                            height: 5.h,
                                                            //color: Colors.black26,
                                                            decoration: BoxDecoration(
                                                                border: Border.all(
                                                                    color: Colors
                                                                        .black26)),
                                                            child: Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15,
                                                                  right: MediaQuery.of(
                                                                              context)
                                                                          .size
                                                                          .width /
                                                                      15),
                                                              child:
                                                                  DropdownButtonHideUnderline(
                                                                child:
                                                                    DropdownButton<
                                                                        String>(
                                                                  value:
                                                                      dropdownValue,
                                                                  autofocus:
                                                                      true,
                                                                  icon: const Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_sharp),
                                                                  // iconSize: 24,
                                                                  //elevation: 16,
                                                                  isExpanded:
                                                                      true,

                                                                  onChanged:
                                                                      (String?
                                                                          newValue) {
                                                                    setState(
                                                                        () {
                                                                      dropdownValue =
                                                                          newValue!;
                                                                    });
                                                                  },
                                                                  items: <
                                                                      String>[
                                                                    '-Select-',
                                                                  ].map<
                                                                      DropdownMenuItem<
                                                                          String>>((String
                                                                      value) {
                                                                    return DropdownMenuItem<
                                                                        String>(
                                                                      value:
                                                                          value,
                                                                      child: Text(
                                                                          value),
                                                                    );
                                                                  }).toList(),
                                                                ),
                                                              ),
                                                            )),
                                                      ),
                                                      SizedBox(
                                                        height: 2.h,
                                                      ),
                                                      FlatButton(
                                                          color: Colors
                                                              .lightBlueAccent,
                                                          textColor:
                                                              Colors.white,
                                                          child: Text(
                                                            'Display',
                                                          ),
                                                          onPressed: () =>
                                                              DashBoard()),
                                                    ],
                                                  ),
                                                ),
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
                          Stack(children: [
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
                                          left: .25,
                                          right: 0.25,
                                          bottom: 0.5,
                                        ),
                                        title: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              'Publications',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 17),
                                            ),
                                            SizedBox(
                                              width: 34.w,
                                            ),
                                            Icon(
                                              Icons.arrow_drop_down_outlined,
                                              color: Colors.white,
                                              size: 20,
                                            ),
                                          ],
                                        ),
                                        children: [
                                          Container(
                                            height: 40.h,
                                            width: 100.w,
                                            color: Colors.white,
                                            child: Stack(
                                              children: [
                                                Center(
                                                    child: Container(
                                                  height: 5.h,
                                                  width: 60.w,
                                                  color: Colors.redAccent,
                                                  child: Center(
                                                    child: Text(
                                                      "Error Could Not get Article !",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          fontSize: 12.sp),
                                                    ),
                                                  ),
                                                ))
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
                        ],
                      ),
                    ),
                  ),
                ))));
  }
}
