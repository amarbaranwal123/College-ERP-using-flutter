// import 'more.dart';
// import 'myplan.dart';
// import 'recharge.dart';
// import 'support.dart';
import 'package:erp/DashBoard.dart';
import 'package:flutter/material.dart';
import 'MyProfile.dart';
// import 'home/homepage.dart';

class BottomBar extends StatefulWidget {
  BottomBar({Key? key}) : super(key: key);
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    DashBoard(),
    MyProfile(),
    // Recharge(),
    // Support(),
    // More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.maps_home_work,
                  color: Colors.blue.shade200,
                  size: 20,
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            title: Text('HOME'),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.maps_home_work,
                  color: Colors.black,
                ),
                Text(
                  'HOME',
                  style: TextStyle(
                      color: Colors.pink.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.queue_play_next_outlined,
                  color: Colors.blue.shade200,
                  size: 20,
                ),
                Text(
                  'My Plan',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            title: Text('HOME'),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.queue_play_next_outlined,
                  color: Colors.black,
                ),
                Text(
                  'My Plan',
                  style: TextStyle(
                      color: Colors.pink.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.settings_backup_restore_rounded,
                  color: Colors.blue.shade200,
                  size: 20,
                ),
                Text(
                  'Recharge',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            title: Text('Recharge'),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.settings_backup_restore_rounded,
                  color: Colors.black,
                ),
                Text(
                  'Recharge',
                  style: TextStyle(
                      color: Colors.pink.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.dashboard_customize_sharp,
                  color: Colors.blue.shade200,
                  size: 20,
                ),
                Text(
                  'Support',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            title: Text('Support'),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.dashboard_customize_sharp,
                  color: Colors.black,
                ),
                Text(
                  'Support',
                  style: TextStyle(
                      color: Colors.pink.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          BottomNavigationBarItem(
            icon: Column(
              children: [
                Icon(
                  Icons.add_circle_outline_rounded,
                  color: Colors.blue.shade200,
                  size: 20,
                ),
                Text(
                  'More',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.bold,
                      fontSize: 13),
                ),
              ],
            ),
            // ignore: deprecated_member_use
            title: Text('more'),
            activeIcon: Column(
              children: [
                Icon(
                  Icons.add_circle_outline_rounded,
                  color: Colors.black,
                ),
                Text(
                  'More',
                  style: TextStyle(
                      color: Colors.pink.shade700, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
        // type: BottomNavigationBarType.shifting,

        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
