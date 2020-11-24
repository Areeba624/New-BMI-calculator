import 'package:flutter/material.dart';
import 'constent_variable.dart';
import 'Repeate_contanier.dart';
import 'Input_Page.dart';

class Resultfind extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI RESULT'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'YOUR RESULT',
                    style: ConstentTextLabe3,
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: Repeate_contanier(
                colors: activationcolor,
                cardWidge: Column(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("NORMAL", style: Result1),
                    Text("180", style: Result2),
                    Text(
                      'SUGGESTION',
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => InputPage()));
                },
                child: Container(
                  child: Center(
                    child: Text('Re Calculate', style: ConstentTextLabe3),
                  ),
                  color: Colors.deepOrange,
                  height: 60,
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 10),
                ),
              ),
            ),
          ],
        ));
  }
}
