import 'package:flutter/material.dart';
import '../constants.dart';
class bottomButton extends StatelessWidget {

  bottomButton({@required this.buttonLabel, this.ontap});
  final String buttonLabel;
  final Function ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        child: Center(
          child: Text(

            buttonLabel,
            style: kbuttonTextStyle,
          ),
        ),
        color: Colors.pink,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(top:5.0,bottom: 20.0),
        width: double.infinity,
        height: 50.0,
      ),
    );
  }
}
