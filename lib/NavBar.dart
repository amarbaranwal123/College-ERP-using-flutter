import 'package:erp/ApplicationForm.dart';
import 'package:erp/DashBoard.dart';
import 'package:erp/Login.dart';
import 'package:erp/admission.dart';
import 'package:erp/finepayment.dart';
import 'package:erp/holiday.dart';
import 'package:erp/reports.dart';
import 'package:erp/timetable.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Eresource.dart';
import 'MyProfile.dart';
import 'library.dart';

class NavBar extends StatefulWidget {
  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  late bool _color;

  @override
  void initState() {
    super.initState();
    _color = true;
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 60.w,
        child: Drawer(
          child: ListView(
            physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics()),
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Amar Baranwal'),
                accountEmail: Text('amar.aiti49@gmail.com'),
                currentAccountPicture: Container(
                  width: 20.w,
                  height: 20.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/image/Photo.jpg"),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: new DecorationImage(
                    image: new AssetImage("assets/image/back.jpg"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Card(
                color: _color ? Colors.deepOrangeAccent : Colors.transparent,
                child: _createDrawerItem(
                  icon: Icons.clear_all_rounded,
                  text: 'Dashboard',
                  onTap: () {
                    setState(() {
                      _color = !_color;
                    });

                    // Navigator.of(context).push(_createRoute1());
                  },
                ),
              ),
              Card(
                color: _color ? Colors.deepOrangeAccent : Colors.transparent,
                child: _createDrawerItem(
                  icon: Icons.person_outlined,
                  text: 'My Profile',
                  onTap: () {
                    Navigator.of(context).push(_createRoute2());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.read_more,
                  text: 'E-Resources',
                  onTap: () {
                    Navigator.of(context).push(_createRoute3());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.admin_panel_settings_outlined,
                  text: 'Admission Form',
                  onTap: () {
                    Navigator.of(context).push(_createRoute4());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.charging_station_outlined,
                  text: 'TimeTable',
                  onTap: () {
                    Navigator.of(context).push(_createRoute5());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.holiday_village_outlined,
                  text: 'Holiday List',
                  onTap: () {
                    Navigator.of(context).push(_createRoute6());
                  },
                ),
              ),
              Card(
                child: ListTile(
                  hoverColor: Colors.amberAccent,

                  // selectedTileColor: Colors.black12,
                  title: Row(
                    children: <Widget>[
                      Icon(Icons.work_off_outlined),
                      Padding(
                        padding: EdgeInsets.only(left: 8.0),
                        child: Text("amar"),
                      )
                    ],
                  ),
                  onTap: () {
                    Navigator.of(context).push(_createRoute1());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.work_off_outlined,
                  text: 'Assignment',
                  onTap: () {
                    Navigator.of(context).push(_createRoute1());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.flutter_dash_outlined,
                  text: 'Fees Payment',
                  onTap: () {
                    Navigator.of(context).push(_createRoute1());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.flight_land_outlined,
                  text: 'Fine Payment',
                  onTap: () {
                    Navigator.of(context).push(_createRoute14());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.copy_all_outlined,
                  text: 'Library',
                  onTap: () {
                    Navigator.of(context).push(_createRoute12());
                  },
                ),
              ),
              Card(
                child: _createDrawerItem(
                  icon: Icons.report_rounded,
                  text: 'Reports',
                  onTap: () {
                    Navigator.of(context).push(_createRoute13());
                  },
                ),
              ),
              Card(
                color: Colors.black12,
                child: _createDrawerItem(
                  icon: Icons.keyboard_backspace_rounded,
                  text: 'Sign Out',
                  onTap: () {
                    Navigator.of(context).push(_createRoute15());
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget _createDrawerItem(
    {required IconData icon, required String text, GestureTapCallback? onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => MyProfile(),
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

Route _createRoute3() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Eresourse(),
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

Route _createRoute4() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Admission(),
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

Route _createRoute5() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => TimeTable(),
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

Route _createRoute6() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Holiday(),
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

Route _createRoute12() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Library(),
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

Route _createRoute13() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Reports(),
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

Route _createRoute14() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => FinePayment(),
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

Route _createRoute15() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Login(),
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
