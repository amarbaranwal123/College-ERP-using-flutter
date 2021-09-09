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
                                      left: MediaQuery.of(context).size.width /
                                          99,
                                      right: MediaQuery.of(context).size.width /
                                          99,
                                      bottom:
                                          MediaQuery.of(context).size.width /
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
                                                color: Colors.black12,
                                                child: Center(
                                                  child: Stack(
                                                    children: [
                                                      Container(
                                                          height: 54.h,
                                                          width: 70.w,
                                                          color: Colors.black38,
                                                          child: Stack(
                                                            children: [
                                                              Column(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsets.only(
                                                                        top: MediaQuery.of(context).size.height /
                                                                            90),
                                                                    child:
                                                                        Center(
                                                                      child:
                                                                          Container(
                                                                        color: Colors
                                                                            .white,
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
                          ]),
                        ),
                      ],
                    ),
                  ),
                ))));
  }
}
