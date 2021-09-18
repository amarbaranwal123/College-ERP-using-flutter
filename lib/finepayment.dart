// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:ui';
//import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class FinePayment extends StatefulWidget {
  const FinePayment({Key? key}) : super(key: key);
  static const routeName = '/FinaPayment';
  @override
  State<FinePayment> createState() => _FinePaymentState();
}

class _FinePaymentState extends State<FinePayment> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) async {
      await showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    height: 5.h,
                    width: 40.w,
                    // color: Colors.black45,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text("No Pending Dues !!"),
                    ),
                  ),
                ),
                Container(
                  height: 5.h,
                  width: 10.w,
                  // color: Colors.black87,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          //contentPadding: EdgeInsets.all(0.0),
        ),
      );
    });
  }

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
                height: 100.h,
                color: Colors.blueGrey.shade50,
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
                            'Fine Payement',
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
                            height: 38.h,
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
                                    height: 36.45.h,
                                    width: 100.w,
                                    decoration: BoxDecoration(
                                        gradient: LinearGradient(
                                          colors: [
                                            Colors.white54,
                                            Colors.white54,
                                          ],
                                        ),
                                        border:
                                            Border.all(color: Colors.black12)),
                                    child: Stack(
                                      children: [],
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
