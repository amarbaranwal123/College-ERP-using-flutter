// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_hover_eg/OnHover.dart';
// import 'package:flutter_hover_eg/text_page.dart';
// void main() {
//   runApp(MyApp());
// }
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(),
//     );
//   }
// }
// class MyHomePage extends StatefulWidget {
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Hover Example"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             OnHover(
//               builder: (isHovered) {
//                 final color = isHovered ? Colors.orange : Colors.redAccent;
//                 return PhysicalModel(
//                   color: Colors.white,
//                   elevation: isHovered ? 16 : 0,
//                   child: Container(
//                       height: 50,
//                       width: 200,
//                       color: color,
//                       child: Center(
//                         child: Text("Proto Coders Point"),
//                       )),
//                 );
//               },
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             OnHover(builder: (isHovered) {
//               return Text(
//                   "Flutter Text on hover - change text color on hovering with animation");
//             }),
//             SizedBox(
//               height: 30,
//             ),
//             //if isHovered is true then show elevation else set elevation to 0
//             OnHover(builder: (isHovered) {
//               return PhysicalModel(
//                 color: Colors.blue,
//                 elevation: isHovered ? 16 : 0,
//                 child: Container(
//                   width: 100,
//                   height: 100,
//                 ),
//               );
//             }),
//             OnHover(builder: (isHovered) {
//               final color = isHovered ? Colors.grey : Colors.blue;
//               return Container(
//                 color: color,
//                 width: 100,
//                 height: 100,
//               );
//             }),
//             SizedBox(
//               height: 30,
//             ),
//             OnHover(builder: (isHovered) {
//               final color = isHovered ? Colors.red : Colors.blue;
//               return ElevatedButton(
//                   style: ElevatedButton.styleFrom(primary: color),
//                   onPressed: () {},
//                   child: Text('Change Button Color on hover'));
//             }),
//           ],
//         ),
//       ),
//     );
//   }
// }