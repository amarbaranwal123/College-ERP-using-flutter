import 'package:flutter/material.dart';

import 'NavBar.dart';

class MyProfile extends StatelessWidget {
  static const routeName = 'lib/MyProfile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Image.asset('assets/image/dpu.png', fit: BoxFit.fitHeight),
      ),
      body: SafeArea(
          child: Center(
        child: Text('My Profile'),
      )),
    );
  }
}
