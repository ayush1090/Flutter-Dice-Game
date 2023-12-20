import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

// class DicePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     int digi = 5;
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Left Button Got Pressed');
//               },
//               child: Image.asset('images/dice$digi.png'),
//             ),
//           ),
//           Expanded(
//             child: TextButton(
//               onPressed: () {
//                 print('Right Button Got Pressed');
//               },
//               child: Image.asset('images/dice1.png'),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftDiceNo = 1;
  int rightDiceNo = 1;

  void changeDiceFace(){
    setState(() {
      leftDiceNo = Random().nextInt(6)+1; //1-6;
      rightDiceNo = Random().nextInt(6)+1;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                //print('Left Button Got Pressed');
                changeDiceFace();
              },
              child: Image.asset('images/dice$leftDiceNo.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                //print('Right Button Got Pressed');
                // setState(() {
                //   rightDiceNo = Random().nextInt(6)+1; // 1 to 6
                //   leftDiceNo = Random().nextInt(6)+1;
                // });
                changeDiceFace();
              },
              child: Image.asset('images/dice$rightDiceNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}

