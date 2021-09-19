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
                  height: 100.h,
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
                          Container(
                            height: 4.h,
                            width: 100.w,
                            child: Text(
                              ' Student Receipt Register',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.sp),
                            ),
                          ),
                          SizedBox(
                            height: .2.h,
                          ),
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
                                          // mainAxisAlignment:
                                          //     MainAxisAlignment.spaceBetween,
                                          children: [
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              '  Receipt Register',
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
                                                Padding(
                                                  padding: EdgeInsets.all(
                                                      MediaQuery.of(context)
                                                              .size
                                                              .width /
                                                          90),
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
                                                            child: Row(
                                                              children: [
                                                                Text(
                                                                  "Select Academic Year",
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
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          14.sp,
                                                                      color: Colors
                                                                          .red),
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
                                                                    '2021-22',
                                                                    '2020-21',
                                                                    '2019-20',
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
                                                        height: 4.5.h,
                                                        child: Container(
                                                            // color: Colors.black12,
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
                                                          // color: Colors.black26,
                                                          height: 5.5.h,
                                                          child: Row(
                                                            // mainAxisAlignment:
                                                            //     MainAxisAlignment
                                                            //         .spaceAround,
                                                            children: [
                                                              Container(
                                                                height: 4.5.h,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .black12,
                                                                      offset:
                                                                          const Offset(
                                                                        3.0,
                                                                        3.0,
                                                                      ),
                                                                      blurRadius:
                                                                          1,
                                                                      spreadRadius:
                                                                          .05,
                                                                    ), //BoxShadow
                                                                    //BoxShadow
                                                                  ],
                                                                ),
                                                                child:
                                                                    FlatButton(
                                                                        color: Colors
                                                                            .lightBlueAccent,
                                                                        textColor:
                                                                            Colors
                                                                                .white,
                                                                        child:
                                                                            Text(
                                                                          'Display',
                                                                        ),
                                                                        onPressed:
                                                                            () =>
                                                                                DashBoard()),
                                                              ),
                                                              SizedBox(
                                                                width: 1.5.w,
                                                              ),
                                                              Container(
                                                                height: 5.5.h,
                                                                // color: Colors
                                                                //     .black12,
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                    "Show",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14.sp),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                width: 1.5.w,
                                                              ),
                                                              Container(
                                                                height: 4.5.h,
                                                                width: 20.w,
                                                                decoration:
                                                                    BoxDecoration(
                                                                  gradient:
                                                                      LinearGradient(
                                                                          colors: [
                                                                        Colors
                                                                            .white,
                                                                        Colors
                                                                            .white,
                                                                      ]),
                                                                  boxShadow: [
                                                                    BoxShadow(
                                                                      color: Colors
                                                                          .black54,
                                                                      offset:
                                                                          const Offset(
                                                                        0.0,
                                                                        2.0,
                                                                      ),
                                                                      blurRadius:
                                                                          1,
                                                                      spreadRadius:
                                                                          .25,
                                                                    ), //BoxShadow
                                                                    //BoxShadow
                                                                  ],
                                                                ),
                                                                // color: Colors
                                                                //     .black12,
                                                                child:
                                                                    DropdownButtonHideUnderline(
                                                                  child:
                                                                      DropdownButton<
                                                                          String>(
                                                                    value:
                                                                        dropdownValue1,
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
                                                                        dropdownValue1 =
                                                                            newValue!;
                                                                      });
                                                                    },
                                                                    items: <
                                                                        String>[
                                                                      '10',
                                                                      '25',
                                                                      '50',
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
                                                              ),
                                                              SizedBox(
                                                                width: 1.5.w,
                                                              ),
                                                              Container(
                                                                height: 5.5.h,
                                                                // color: Colors
                                                                //     .black12,
                                                                child: Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child: Text(
                                                                    "Entries",
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            14.sp),
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: .5.h,
                                                      ),
                                                      Container(
                                                        width: 60.w,
                                                        height: 4.5.h,
                                                        // color: Colors.black26,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Text(
                                                              "Search :",
                                                              style: TextStyle(
                                                                fontSize: 14.sp,
                                                              ),
                                                            ),
                                                            Container(
                                                              //                color: Colors.black38,
                                                              height: 5.25.h,
                                                              width: 40.w,
                                                              //  color:
                                                              //        Colors.black12,
                                                              child: Padding(
                                                                padding: EdgeInsets.only(
                                                                    bottom: MediaQuery.of(context)
                                                                            .size
                                                                            .height /
                                                                        99),
                                                                child:
                                                                    TextFormField(
                                                                        decoration:
                                                                            InputDecoration(
                                                                  enabledBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.black38),
                                                                  ),
                                                                  focusedBorder:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.lightBlueAccent),
                                                                  ),
                                                                  border:
                                                                      UnderlineInputBorder(
                                                                    borderSide:
                                                                        BorderSide(
                                                                            color:
                                                                                Colors.black38),
                                                                  ),
                                                                )),
                                                              ),
                                                            ),
                                                          ],
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
                                                          height: 3.h,
                                                          color: Colors
                                                              .lightBlue
                                                              .shade400,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: .2.h,
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
                                                          height: 3.5.h,
                                                          width: 100.w,
                                                          color: Colors
                                                              .lightBlue
                                                              .shade200,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              " No data available in table",
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: Colors
                                                                      .black87),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: .5.h,
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
                                                          height: 4.5.h,
                                                          width: 100.w,
                                                          //  color: Colors.white,
                                                          child: Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: Text(
                                                              "Showing 0 to 0 of 0 entries..!!",
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold,
                                                                  fontSize:
                                                                      12.sp,
                                                                  color: Colors
                                                                      .black54),
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
                                                          height: 4.5.h,
                                                          width: 100.w,
                                                          // color: Colors.white,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceBetween,
                                                            children: [
                                                              TextButton(
                                                                onPressed: null,
                                                                child: Text(
                                                                  "Previous",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                              TextButton(
                                                                onPressed: null,
                                                                child: Text(
                                                                  "Next",
                                                                  style: TextStyle(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold),
                                                                ),
                                                              ),
                                                            ],
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
