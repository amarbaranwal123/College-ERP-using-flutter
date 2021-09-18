// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:ui';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class Eresourse extends StatefulWidget {
  const Eresourse({Key? key}) : super(key: key);
  static const routeName = '/Eresourse';
  @override
  State<Eresourse> createState() => _EresourseState();
}

class _EresourseState extends State<Eresourse> {
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
              child: Container(
                color: Colors.grey.shade300,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width / 30,
                        right: MediaQuery.of(context).size.width / 30,
                        bottom: MediaQuery.of(context).size.width / 30,
                        top: MediaQuery.of(context).size.width / 30),
                    child: Column(
                      children: [
                        SizedBox(
                          height: .5.h,
                        ),
                        Container(
                          height: 4.h,
                          width: 100.w,
                          // color: Colors.black,
                          child: Text(
                            'E-Resources',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18.sp),
                          ),
                        ),
                        SizedBox(
                          height: .5.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            //left: MediaQuery.of(context).size.width / 99,
                            //right: MediaQuery.of(context).size.width / 99,
                            bottom: MediaQuery.of(context).size.width / 30,
                          ),
                          child: Container(
                            height: 288.h,
                            width: 100.w,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Colors.white,
                                  Colors.white,
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
                                Padding(
                                  padding: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.width / 60,
                                    left:
                                        MediaQuery.of(context).size.width / 70,
                                    right:
                                        MediaQuery.of(context).size.width / 70,
                                    bottom:
                                        MediaQuery.of(context).size.width / 70,
                                  ),
                                  child: Container(
                                    height: 286.45.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white,
                                            Colors.white,
                                          ],
                                        ),
                                        border:
                                            Border.all(color: Colors.black12)),
                                    child: Stack(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                99,
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
                                                80,
                                          ),
                                          child: Column(
                                            children: [
                                              GestureDetector(
                                                onTap: _launchURL,
                                                child: Container(
                                                  height: 28.h,
                                                  width: 100.w,
                                                  decoration: new BoxDecoration(
                                                    image: new DecorationImage(
                                                      image: new AssetImage(
                                                          "assets/image/ER1.png"),
                                                      fit: BoxFit.fill,
                                                    ),
                                                    border: Border.all(
                                                        color:
                                                            Colors.red.shade900,
                                                        width: 5),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER2.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER3.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER4.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER5.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER6.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER7.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER8.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 28.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER9.png"),
                                                    fit: BoxFit.cover,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                              SizedBox(
                                                height: .6.h,
                                              ),
                                              Container(
                                                height: 27.775.h,
                                                width: 100.w,
                                                decoration: new BoxDecoration(
                                                  image: new DecorationImage(
                                                    image: new AssetImage(
                                                        "assets/image/ER10.png"),
                                                    fit: BoxFit.fill,
                                                  ),
                                                  border: Border.all(
                                                      color:
                                                          Colors.red.shade900,
                                                      width: 5),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ))),
    );
  }
}

_launchURL() async {
  const url = 'https://flutter.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
