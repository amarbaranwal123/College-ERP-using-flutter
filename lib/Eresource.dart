import 'package:flutter/material.dart';

import 'NavBar.dart';

class MyProfile extends StatelessWidget {
  static const routeName = 'lib/Eresource';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('E-Resource')),
      body: SafeArea(
          child: Center(
        child: Text('E-Resource'),
      )),
    );
  }
}
