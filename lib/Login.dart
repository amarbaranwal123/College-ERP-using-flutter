import 'package:erp/DashBoard.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'DashBoard.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dropdownValue = 'Faculty';
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Container(
              height: 96.5.h,
              width: 100.w,
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.4, 0.9],
                  colors: [
                    //Colors.purple.shade500,
                    Colors.yellow.shade100,
                    Colors.yellow.shade100,
                  ],
                ),
              ),
              child: Center(
                child: Stack(
                  children: [
                    Container(
                      color: Colors.black38,
                      height: 60.h,
                      width: 100.w,
                      child: Padding(
                        padding: EdgeInsets.all(
                            MediaQuery.of(context).size.width / 30),
                        child: Stack(
                          children: [
                            Container(
                              color: Colors.white,
                              height: 60.h,
                              width: 95.w,
                              child: Center(
                                child: Stack(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Container(
                                          height: 12.h,
                                          width: 90.w,
                                          //   color: Colors.lightBlue.shade100,
                                          decoration: BoxDecoration(
                                            image: new DecorationImage(
                                              image: new AssetImage(
                                                  "assets/image/dpu.png"),
                                              fit: BoxFit.contain,
                                            ),
                                            //  border: Border.all(color: Colors.white),
                                          ),
                                        ),
                                        Container(
                                          height: 7.h,
                                          width: 90.w,
                                          //         color: Colors.black,
                                          child: Center(
                                            child: Stack(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Container(
                                                      height: 4.h,
                                                      width: 30.w,
                                                      color: Colors.white,
                                                      child: FittedBox(
                                                        fit: BoxFit.contain,
                                                        child: Text(
                                                          'Login',
                                                          style: TextStyle(
                                                            color: Colors.red,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 2.sp,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        height: 2.h,
                                                        width: 40.w,
                                                        // color: Colors.black,
                                                        child: Center(
                                                          child: Align(
                                                            alignment: Alignment
                                                                .topLeft,
                                                            child: Stack(
                                                              children: [
                                                                Center(
                                                                  child:
                                                                      Container(
                                                                    height:
                                                                        .8.h,
                                                                    width: 15.h,
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              15),
                                                                      gradient:
                                                                          LinearGradient(
                                                                        colors: [
                                                                          Colors
                                                                              .orange,
                                                                          Colors
                                                                              .orange,
                                                                        ],
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        )),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Container(
                                            height: 5.h,
                                            width: 90.w,
                                            // color: Colors.lightBlue,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6),
                                                border: Border.all(
                                                    color: Colors.black,
                                                    width: 2),
                                                gradient:
                                                    LinearGradient(colors: [
                                                  Colors.white,
                                                  Colors.white,
                                                ])),
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        30,
                                                    right:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            30),
                                                child: DropdownButton<String>(
                                                  value: dropdownValue,
                                                  autofocus: true,
                                                  icon: const Icon(Icons
                                                      .keyboard_arrow_down_sharp),
                                                  // iconSize: 24,
                                                  //elevation: 16,
                                                  isExpanded: true,

                                                  onChanged:
                                                      (String? newValue) {
                                                    setState(() {
                                                      dropdownValue = newValue!;
                                                    });
                                                  },
                                                  items: <String>[
                                                    'Faculty',
                                                    'Student',
                                                    'Parents',
                                                  ].map<
                                                          DropdownMenuItem<
                                                              String>>(
                                                      (String value) {
                                                    return DropdownMenuItem<
                                                        String>(
                                                      value: value,
                                                      child: Text(value),
                                                    );
                                                  }).toList(),
                                                ))),
                                        Container(
                                            height: 5.h,
                                            width: 90.w,
                                            // color: Colors.lightBlue,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              border: Border.all(
                                                  color: Colors.black,
                                                  width: 2),
                                              gradient: LinearGradient(colors: [
                                                Colors.white,
                                                Colors.white,
                                              ]),
                                            ),
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        30,
                                                    right:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width /
                                                            30),
                                                child: TextField(
                                                    decoration: InputDecoration(
                                                        hintText:
                                                            "UserName")))),
                                        Container(
                                          height: 5.h,
                                          width: 90.w,
                                          // color: Colors.lightBlue,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(6),
                                            border: Border.all(
                                              color: Colors.black,
                                              width: 2,
                                            ),
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.white,
                                                Colors.white,
                                              ],
                                            ),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.only(
                                              left: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  30,
                                              right: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  30,
                                            ),
                                            child: TextField(
                                              decoration: InputDecoration(
                                                  hintText: "Password"),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                50,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                50,
                                          ),
                                          child: Container(
                                            height: 5.h,
                                            width: 90.w,
                                            //  color: Colors.lightBlue,
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 5.h,
                                                  width: 68.w,
                                                  // color: Colors.lightBlue,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            6),
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 2,
                                                    ),
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.white,
                                                        Colors.white,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding: EdgeInsets.only(
                                                      left:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              30,
                                                      right:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width /
                                                              30,
                                                    ),
                                                    child: TextField(
                                                      decoration: InputDecoration(
                                                          hintText:
                                                              "Enter Captcha Code"),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  height: 5.h,
                                                  width: 20.w,
                                                  // color: Colors.lightBlue,
                                                  decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.black,
                                                      width: 2,
                                                    ),
                                                    gradient: LinearGradient(
                                                      colors: [
                                                        Colors.white,
                                                        Colors.white,
                                                      ],
                                                    ),
                                                  ),
                                                  child: Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text('Captcha')),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                45,
                                            right: MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                45,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                height: 5.h,
                                                width: 40.w,
                                                // color: Colors.lightBlue,

                                                child: Stack(
                                                  children: [
                                                    Center(
                                                      child: Container(
                                                        height: 5.h,
                                                        width: 40.w,
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              height: 4.h,
                                                              width: 8.w,
                                                              // color: Colors
                                                              //     .lightBlue,
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Checkbox(
                                                                    checkColor:
                                                                        Colors
                                                                            .white,
                                                                    // fillColor: MaterialStateProperty.resolveWith(getColor),
                                                                    value:
                                                                        isChecked,
                                                                    onChanged:
                                                                        (bool?
                                                                            value) {
                                                                      setState(
                                                                          () {
                                                                        isChecked =
                                                                            value!;
                                                                      });
                                                                    }),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                height: 4.h,
                                                                width: 25.w,
                                                                // color:
                                                                //     Colors.blue,
                                                                child:
                                                                    FittedBox(
                                                                  fit: BoxFit
                                                                      .contain,
                                                                  child: Text(
                                                                    'Remember me',
                                                                    style: TextStyle(
                                                                        fontWeight:
                                                                            FontWeight
                                                                                .bold,
                                                                        fontSize:
                                                                            2.sp),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              TextButton(
                                                style: ButtonStyle(
                                                  backgroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.red),
                                                  foregroundColor:
                                                      MaterialStateProperty.all<
                                                          Color>(Colors.white),
                                                ),
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .push(_createRoute1());
                                                },
                                                child: Text('Sign In'),
                                              )
                                            ],
                                          ),
                                        ),
                                        Container(
                                            height: 5.h,
                                            width: 90.w,
                                            // color: Colors.lightBlue,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(6),
                                              gradient: LinearGradient(
                                                colors: [
                                                  Colors.white,
                                                  Colors.white,
                                                ],
                                              ),
                                            ),
                                            child: Stack(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                    left: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        1.75,
                                                    top: MediaQuery.of(context)
                                                            .size
                                                            .width /
                                                        99.99,
                                                  ),
                                                  child: Container(
                                                    height: 4.5.h,
                                                    width: 32.w,
                                                    //color: Colors.black,
                                                    child: FittedBox(
                                                      fit: BoxFit.contain,
                                                      child: Text(
                                                        'Forgett Password ?',
                                                        style: TextStyle(
                                                            color: Colors.blue,
                                                            fontSize: 10.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            )),
                                      ],
                                    )
                                  ],
                                ),
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
          ),
        ),
      ),
    );
  }
}

Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => DashBoard(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(-5.0, .0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
