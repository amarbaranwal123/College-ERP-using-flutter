import 'package:flutter/material.dart';

import 'NavBar.dart';

class ApplicationForm extends StatelessWidget {
  static const routeName = '/ApplicationForm';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      appBar: AppBar(title: Text('ApplicationForm')),
      body: SafeArea(
          child: Center(
        child: Text('ApplicationForm'),
      )),
    );
  }
}
