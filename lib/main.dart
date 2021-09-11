import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'ApplicationForm.dart';
import 'DashBoard.dart';
import 'MyProfile.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        routes: {
          MyProfile.routeName: (ctx) => MyProfile(),
          DashBoard.routeName: (ctx) => DashBoard(),
          ApplicationForm.routeName: (ctx) => ApplicationForm(),
        },
        debugShowCheckedModeBanner: false,
        home: MyProfile(),
      );
    });
    /* return MaterialApp(
         // More() //Alcl() //, //HomeScreen(),
        routes: {
        /*SignupScreen.routeName: (ctx) => SignupScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          HomeScreen.routeName: (ctx) => HomeScreen(),*/
        // },
        );*/
  }
}
