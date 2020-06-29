import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../constants.dart';
import '../components/reusable_card.dart';
import '../components/bottomButton.dart';
class ResultPage extends StatelessWidget {
  ResultPage({@required this.result,@required this.bmiresult,@required this.moreresult});
  final String result;
  final String moreresult;
  final String bmiresult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text(
                "YOUR RESULT",
                style:kbuttonTextStyle ,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child:resuableCard(
              colour: kactivecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    result.toUpperCase(),
                    style: kiconTextStyle,
                  ),
                  Text(
                    bmiresult,
                    style: knumberStyle,
                  ),
                  Text(
                    moreresult,
                    style: kiconTextStyle,
                  )
                ],
              ),
            )
          ),
          bottomButton(buttonLabel: 'RECALCULATE',)
        ],
      ),
    );
  }
}
