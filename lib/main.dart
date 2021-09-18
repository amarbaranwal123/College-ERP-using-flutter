import 'package:erp/Login.dart';
import 'package:erp/holiday.dart';
import 'package:erp/reports.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sizer/sizer.dart';

import 'ApplicationForm.dart';
import 'DashBoard.dart';
import 'Eresource.dart';
import 'MyProfile.dart';
import 'admission.dart';
import 'finepayment.dart';
import 'timetable.dart';

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
            Holiday.routeName: (ctx) => Holiday(),
            Reports.routeName: (ctx) => Reports(),
            Admission.routeName: (ctx) => Admission(),
            FinePayment.routeName: (ctx) => FinePayment(),
            TimeTable.routeName: (ctx) => TimeTable(),
            MyProfile.routeName: (ctx) => MyProfile(),
            DashBoard.routeName: (ctx) => DashBoard(),
            Eresourse.routeName: (ctx) => Eresourse(),
            ApplicationForm.routeName: (ctx) => ApplicationForm(),
          },
          debugShowCheckedModeBanner: false,
          home: Login() //TimeTable() // Eresourse() //Login() // MyProfile(),
          );
    });
  }
}
