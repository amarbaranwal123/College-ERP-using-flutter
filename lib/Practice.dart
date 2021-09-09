import 'package:flutter/material.dart';



class Practice extends StatefulWidget {
  @override
  PracticeState createState() => PracticeState();
}

class PracticeState extends State<Practice> {
  late int tappedIndex;

  @override
  void initState() {
    super.initState();
    tappedIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          ListView.builder(
              shrinkWrap: true,
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                    color: tappedIndex == index ? Colors.blue : Colors.grey,
                    child: ListTile(
                        title: Center(
                      child: Text('${index + 1}'),
                    ),onTap:(){
                          setState((){
                            tappedIndex=index;
                          });
                        }));
              })
        ]));
  }
}
