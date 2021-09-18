import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Reports extends StatefulWidget {
  static const routeName = '/Reports';

  @override
  State<Reports> createState() => _ReportsState();
}

class _ReportsState extends State<Reports> {
  String dropdownValue = '-Select-';

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
                                        left:
                                            MediaQuery.of(context).size.width /
                                                99,
                                        right:
                                            MediaQuery.of(context).size.width /
                                                99,
                                        bottom:
                                            MediaQuery.of(context).size.width /
                                                99,
                                      ),
                                      title: Row(
                                        children: [
                                          Icon(
                                            Icons.arrow_drop_down_outlined,
                                            color: Colors.white,
                                            size: 20,
                                          ),
                                          Text(
                                            '  Receipt Register',
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
                                          color: Colors.lightBlue.shade50,
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
                                                      // color: Colors.black12,
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
                                                                      .black54)),
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
                                                                DropdownButton<
                                                                    String>(
                                                              value:
                                                                  dropdownValue,
                                                              autofocus: true,
                                                              icon: const Icon(Icons
                                                                  .keyboard_arrow_down_sharp),
                                                              // iconSize: 24,
                                                              //elevation: 16,
                                                              isExpanded: true,

                                                              onChanged: (String?
                                                                  newValue) {
                                                                setState(() {
                                                                  dropdownValue =
                                                                      newValue!;
                                                                });
                                                              },
                                                              items: <String>[
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
                                                                  value: value,
                                                                  child: Text(
                                                                      value),
                                                                );
                                                              }).toList(),
                                                            ),
                                                          )),
                                                    ),
                                                    SizedBox(
                                                      height: 5.5.h,
                                                      child: Container(
                                                        color: Colors.black12,
                                                      ),
                                                    ),
                                                    Container(
                                                      color: Colors.black26,
                                                      height: 5.5.h,
                                                      
                                                    )
                                                  ],
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
                      ],
                    ),
                  ),
                ))));
  }
}
