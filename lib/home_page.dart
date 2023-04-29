// import 'package:flutter/material.dart';
//
// class HomePage extends StatefulWidget {
//   @override
//   State<HomePage> createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//   Widget btn(String val) {
//     return Expanded(
//         child: OutlinedButton(
//             style: OutlinedButton.styleFrom(
//               side: BorderSide(
//                 color: Colors.black26,
//               ),
//             ),
//             onPressed: () => btn(val),
//             child: Padding(
//               padding: EdgeInsets.all(25),
//               child: Text(
//                 "$val",
//                 style: TextStyle(color: Colors.deepOrange, fontSize: 35),
//               ),
//             )));
//   }
//   //
//   // int first = 0, second = 0;
//   //
//   // String ? res, text = "";
//   // String ?opp;
//   //
//
//   int first=0, second=0;
//   String ?res, text = "";
//   String ?opp;
//   void btnClicked(String btnText) {
//     if (btnText == "C") {
//       res = "";
//       text = "";
//       first = 0;
//       second = 0;
//     } else if (btnText == "+" ||
//         btnText == "-" ||
//         btnText == "x" ||
//         btnText == "/") {
//       first = int.parse(text!);
//       res = "";
//       opp = btnText;
//     } else if (btnText == "=") {
//       second = int.parse(text!);
//       if (opp == "+") {
//         res = (first + second).toString();
//       }
//       if (opp == "-") {
//         res = (first - second).toString();
//       }
//       if (opp == "x") {
//         res = (first * second).toString();
//       }
//       if (opp == "/") {
//         res = (first ~/ second).toString();
//       }
//     } else {
//       res = int.parse(text! + btnText).toString();
//     }
//     setState(() {
//       text = res;
//     });
//   }
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     // Build your widget here
//     return Scaffold(
//         backgroundColor: Colors.black,
//         appBar: AppBar(
//           title: Text('Calculator'),
//         ),
//         body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
//           Expanded(
//
//             child: Container(
//               padding: EdgeInsets.all(10.0),
//               alignment: Alignment.bottomRight,
//
//               child:
//
//               Text(
//
//                 text!,
//
//                 style: TextStyle(
//                     fontSize: 60.0,
//                     fontWeight: FontWeight.w500,
//                     color: Colors.white),
//               ),
//
//             ),
//           ),
//
//          // Text("asdf",style: TextStyle(color: Colors.white),),
//           Row(
//             children: [btn("9"), btn("8"), btn("7"), btn("+")],
//           ),
//           Row(
//             children: [btn("6"), btn("5"), btn("4"), btn("-")],
//           ),
//           Row(
//             children: [btn("3"), btn("2"), btn("1"), btn("X")],
//           ),
//           Row(
//             children: [
//               btn("C"),
//               btn("0"),
//               btn("="),
//               btn("/"),
//             ],
//           )
//         ]));
//   }
// }
