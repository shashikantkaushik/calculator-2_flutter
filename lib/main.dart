// import 'package:flutter/material.dart';
// import 'package:calculator/home_page.dart';
//
// void main() {
//   runApp(MaterialApp(
//     home: StatefulBuilder(
//       builder: (BuildContext context, StateSetter setState) {
//         return HomePage();
//       },
//     ),
//   ));
// }
//


import 'package:flutter/material.dart';
void main() {
  runApp(myApp());
}
class myApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(

              child: Container(
                color: Colors.black38,
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  text!,
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            Divider(color: Colors.deepOrange,),
            Row(
              children: <Widget>[
                customOutlineButton("9"),
                customOutlineButton("8"),
                customOutlineButton("7"),
                customOutlineButton("+"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("6"),
                customOutlineButton("5"),
                customOutlineButton("4"),
                customOutlineButton("-"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("3"),
                customOutlineButton("2"),
                customOutlineButton("1"),
                customOutlineButton("x"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton("C"),
                customOutlineButton("0"),
                customOutlineButton("="),
                customOutlineButton("/"),
              ],
            ),
          ],
        ),
      ),
    );
  }
  Widget customOutlineButton(String val) {
    return Expanded(
        child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: BorderSide(
                color: Colors.black26,
              ),
            ),
            onPressed: () => btnClicked(val),
            child: Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                "$val",
                style: TextStyle(color: Colors.deepOrange, fontSize: 35),
              ),
            )));
  }
  int first=0, second=0;
  String ?res, text = "";
  String ?opp;
  void btnClicked(String btnText) {
    if (btnText == "C") {
      res = "";
      text = "";
      first = 0;
      second = 0;
    } else if (btnText == "+" ||
        btnText == "-" ||
        btnText == "x" ||
        btnText == "/") {
      first = int.parse(text!);
      res = "";
      opp = btnText;
    } else if (btnText == "=") {
      second = int.parse(text!);
      if (opp == "+") {
        res = (first + second).toString();
      }
      if (opp == "-") {
        res = (first - second).toString();
      }
      if (opp == "x") {
        res = (first * second).toString();
      }
      if (opp == "/") {
        res = (first ~/ second).toString();
      }
    } else {
      res = int.parse(text! + btnText).toString();
    }
    setState(() {
      text = res;
    });
  }
}