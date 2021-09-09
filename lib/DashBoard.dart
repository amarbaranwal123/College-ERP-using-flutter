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
          gradient: LinearGradient(
              colors: [Colors.tealAccent, Colors.teal, Colors.teal])),
      body: SafeArea(
          child: Center(
        child: Container(
          height: 200.h,
        ),
      )),
    );
  }
}
