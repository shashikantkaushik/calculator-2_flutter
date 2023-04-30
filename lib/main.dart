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


import 'package:math_expressions/math_expressions.dart';

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

      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(

              child: Container(
                color: Colors.black38,
                padding: EdgeInsets.all(12.0),
                alignment: Alignment.bottomRight,
                child: Text(
                 hideInput ?"":input ,
                  style: TextStyle(
                      fontSize: 60.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            Expanded(

              child: Container(
                color: Colors.black38,
                padding: EdgeInsets.all(10.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  output,
                  style: TextStyle(
                      fontSize: outputSize,
                      fontWeight: FontWeight.w500,
                      color: Colors.deepOrange),
                ),
              ),
            ),
            //Divider(color: Colors.deepOrange,),
            Row(
              children: <Widget>[
                customOutlineButton(value: "AC",textColor: Color(0xffD9802E)),
                customOutlineButton(value: "<",textColor: Color(0xffD9802E)),
                // customOutlineButton(""),
                customOutlineButton(value: "/",),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton(value: "9"),
                customOutlineButton(value: "8"),
                customOutlineButton(value: "7"),
                customOutlineButton(value: "x"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton(value: "6"),
                customOutlineButton(value: "5"),
                customOutlineButton(value: "4"),
                customOutlineButton(value: "-"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton(value: "3"),
                customOutlineButton(value: "2"),
                customOutlineButton(value: "1"),
                customOutlineButton(value: "+"),
              ],
            ),
            Row(
              children: <Widget>[
                customOutlineButton(value: "%",textColor: Color(0xffD9802E)),
                customOutlineButton(value: "0"),
                customOutlineButton(value: "."),
                customOutlineButton(value: "=",background: Color(0xffD9802E)),
              ],
            ),
            SizedBox(height: 22,)
          ],
        ),
      ),
    );
  }
   static const Color colort=Color(0xff191919);
  Widget customOutlineButton({ value,background:colort,textColor: Colors.white,}) {
    return Expanded(
child:Container(
  padding: EdgeInsets.all(8),
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor:background,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),


            ),
            onPressed: () {
              setState(() {
                input;

              });
              onbtnClick(value);
            },
            child: Padding(
              padding: EdgeInsets.all(22),
              child: Text(
                "$value",
                style: TextStyle(color: textColor, fontSize: 18,fontWeight: FontWeight.bold),
              ),
            ))));
  }
  // int first=0, second=0;
  // String ?res, text = "";
  // String ?opp;
  // String aboveText="";
  var input="";
  var output="";
  var operation="";
  var hideInput=false;
  var outputSize=34.0;
onbtnClick(value){
  if(value=='AC'){
    input="";
    output="";
  }
  else if(value=='<'){
    if(input.isNotEmpty)
    input=input.substring(0,input.length-1);
  }
  else if(value=='=') {
    if (input.isNotEmpty) {
      var userInput = input;
      userInput = input.replaceAll('x', '*');
      Parser p = Parser();
      Expression expression = p.parse(userInput);
      ContextModel cm = ContextModel();
      var finalValue = expression.evaluate(EvaluationType.REAL, cm).toString();
      output = finalValue.toString();
      if(output.endsWith('.0')) {
        output = output.substring(0, output.length - 2);
      }
      input=output;
      hideInput=true;
      outputSize=80;
    }
  }
    else{
      input=input+value;
      hideInput=false;
      outputSize=60;
  }
    setState(() {

    });
  }
}
  // void btnClicked(String btnText) {
  //
  //   if (btnText == "C") {
  //     res = "";
  //     text = "";
  //     first = 0;
  //     second = 0;
  //     aboveText="";
  //   } else if (btnText == "+" ||
  //       btnText == "-" ||
  //       btnText == "x" ||
  //       btnText == "/") {
  //     first = int.parse(text!);
  //     res = "";
  //     opp = btnText;
  //   } else if (btnText == "=") {
  //     second = int.parse(text!);
  //     if (opp == "+") {
  //       res = (first + second).toString();
  //     }
  //     if (opp == "-") {
  //       res = (first - second).toString();
  //     }
  //     if (opp == "x") {
  //       res = (first * second).toString();
  //     }
  //     if (opp == "/") {
  //       res = (first ~/ second).toString();
  //     }
  //   } else {
  //     res = int.parse(text! + btnText).toString();
  //   }
  //   setState(() {
  //     text = res;
  //   });
  // }
