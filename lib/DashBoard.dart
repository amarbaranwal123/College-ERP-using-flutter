import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'NavBar.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';

class DashBoard extends StatelessWidget {
  static const routeName = '/DashBoard';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: NewGradientAppBar(
          title: Container(
            height: 9.h,
            width: 15.h,
            //color: Colors.black,
            child: Image.asset(
              'assets/image/dpu.png',
              fit: BoxFit.cover,
              height: 20,
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
                bottom: MediaQuery.of(context).size.width / 45,
                top: MediaQuery.of(context).size.width / 45),
            child: Container(
              height: 200.h,
              color: Colors.black,
              width: 100.w,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 12,
                    right: MediaQuery.of(context).size.width / 12,
                    bottom: MediaQuery.of(context).size.width / 45,
                    top: MediaQuery.of(context).size.width / 65),
                child: Container(
                  width: 100.w,
                  height: 200.h,
                  color: Colors.blue,
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              color: Colors.yellow,
                              height: 22.h,
                              width: 38.w,
                              child: Center(
                                child: Container(
                                  color: Colors.red,
                                  height: 21.h,
                                  width: 36.w,
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
                              color: Colors.pink,
                              height: 3.h,
                              width: 38.w,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  'Amarnath Baranwal',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14.sp),
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
                                ])),
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
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            'Mentor Details',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15.sp),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        height: 12.h,
                                        width: 30.w,
                                        color: Colors.white,
                                      ),
                                      Container(
                                        height: 3.h,
                                        width: 50.w,
                                        color: Colors.white,
                                        child: Center(
                                          child: Text(
                                            'Mentor allocation not done yet !',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 11.5.sp),
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
                            color: Colors.lightBlue.shade700,
                            height: 10.h,
                            width: 100.w,
                            child: Center(
                                child: Text(
                              'My Profile OPAC',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16.sp),
                            )),
                          ),
                          SizedBox(
                            height: 2.5.h,
                          ),
                          Container(
                            color: Colors.lightBlue.shade100,
                            height: 10.h,
                            width: 100.w,
                            child: Center(
                                child: Text(
                              'My Profile OPAC',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 16.sp),
                            )),
                          ),
                          SizedBox(
                            height: 2.5.h,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      )),
    );
  }
}
