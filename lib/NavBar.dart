import 'package:erp/ApplicationForm.dart';
import 'package:erp/DashBoard.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'MyProfile.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isSelected = false;
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
                      'assets/amar.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
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
              Ink(
                // ignore: dead_code
                color: isSelected ? Colors.yellow : Colors.transparent,
                child: ListTile(
                  leading: Icon(Icons.dashboard_customize_outlined),
                  title: Text('Dashboard'),
                  onTap: () {
                    Navigator.of(context).pushNamed(DashBoard.routeName);
                  },
                ),
              ),
              ListTile(
                // ignore: dead_code
                tileColor: isSelected ? Colors.pink : Colors.transparent,
                leading: Icon(Icons.person_outlined),
                title: Text('My Profilew'),
                onTap: () {
                  Navigator.of(context).pushNamed(MyProfile.routeName);
                },
              ),
              ListTile(
                leading: Icon(Icons.admin_panel_settings_outlined),
                title: Text('Admission Form'),
                onTap: () {
                  Navigator.of(context).pushNamed(ApplicationForm.routeName);
                },
              ),
              /* ListTile(
                leading: Icon(Icons.library_books_outlined),
                title: Text('E-Resources'),
                onTap: () {
                   Navigator.of(context).pushNamed(Eresource.routeName);
                },
              ), */

              ListTile(
                leading: Icon(Icons.charging_station_outlined),
                title: Text('TimeTable'),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                leading: Icon(Icons.holiday_village_outlined),
                title: Text('Holiday List'),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                leading: Icon(Icons.work_off_outlined),
                title: Text('Assignment'),
                onTap: () => null,
              ),
              ListTile(
                leading: Icon(Icons.flutter_dash_outlined),
                title: Text('Fees Payment'),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                leading: Icon(Icons.flight_land_outlined),
                title: Text('Fine Payment'),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                leading: Icon(Icons.library_add_check_outlined),
                title: Text('Library'),
                onTap: () => {Navigator.pop(context)},
              ),
              ListTile(
                leading: Icon(Icons.report_gmailerrorred_outlined),
                title: Text('Reports'),
                onTap: () => {Navigator.pop(context)},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
