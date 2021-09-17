import 'package:erp/ApplicationForm.dart';
import 'package:erp/DashBoard.dart';

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Eresource.dart';
import 'MyProfile.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: 60.w,
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Amar Baranwalll'),
                accountEmail: Text('amar.aiti49@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.asset(
                      'assets/image/dpu.png',
                      width: 90,
                      height: 90,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https:oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              _createDrawerItem(
                icon: Icons.dashboard,
                text: 'Dashboard',
                onTap: () {
                  Navigator.of(context).push(_createRoute1());
                },
              ),
              _createDrawerItem(
                icon: Icons.person_outlined,
                text: 'My Profile',
                onTap: () {
                  Navigator.of(context).push(_createRoute2());
                },
              ),
              _createDrawerItem(
                icon: Icons.read_more,
                text: 'E-Resources',
                onTap: () {
                  Navigator.of(context).push(_createRoute3());
                },
              ),
              _createDrawerItem(
                icon: Icons.admin_panel_settings_outlined,
                text: 'Admission Form',
                onTap: () {
                  Navigator.of(context).push(_createRoute2());
                },
              ),
              _createDrawerItem(
                icon: Icons.charging_station_outlined,
                text: 'TimeTable',
                onTap: () {
                  Navigator.of(context).push(_createRoute2());
                },
              ),
              _createDrawerItem(
                icon: Icons.holiday_village_outlined,
                text: 'Holiday List',
                onTap: () {
                  Navigator.of(context).push(_createRoute1());
                },
              ),
              _createDrawerItem(
                icon: Icons.work_off_outlined,
                text: 'Assignment',
                onTap: () {
                  Navigator.of(context).push(_createRoute1());
                },
              ),
              _createDrawerItem(
                icon: Icons.flutter_dash_outlined,
                text: 'Fees Payment',
                onTap: () {
                  Navigator.of(context).push(_createRoute1());
                },
              ),
              _createDrawerItem(
                icon: Icons.flight_land_outlined,
                text: 'Fine Payment',
                onTap: () {
                  Navigator.of(context).push(_createRoute1());
                },
              ),
            ],
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
