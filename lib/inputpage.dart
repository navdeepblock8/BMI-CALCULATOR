import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
enum Gender {
  male,
  female
}
class InputPage extends StatefulWidget {
    @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
   Gender selectedGender;
   int userheight = 180;
   int userweight = 60;
   int userage = 16;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: resuableCard(onPress:(){
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                    colour: selectedGender == Gender.male?kinactivecolor:kactivecolor,
                  cardChild: icon_content(icon:FontAwesomeIcons.mars,label:'MALE'),
                  ),
                ),
                Expanded(
                  child: resuableCard(onPress:(){
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                      colour: selectedGender == Gender.female?kinactivecolor:kactivecolor,
                    cardChild: icon_content(icon: FontAwesomeIcons.venus,label: "FEMALE",)
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: resuableCard(
                colour: kactivecolor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Height',
                    style: kiconTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: <Widget>[
                      Text(
                        userheight.toString(),
                        style: knumberStyle
                      ),
                      Text(
                        'cm',
                        style: kiconTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    value: userheight.toDouble(),
                    min: 100,
                    max: 220,
                    activeColor: Color(0xFFEB1555),
                    inactiveColor: Color(0xFF8D8E98),
                    onChanged: (double newValue){
                      setState(() {
                        userheight = newValue.toInt();
                      });
                    },
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: resuableCard(
                      colour:kactivecolor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Weight',
                          style: kiconTextStyle,
                        ),
                        Text(
                          userweight.toString(),
                          style: knumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  userweight++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  userweight--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: resuableCard(
                    colour: kactivecolor ,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Age',

                          style: kiconTextStyle,
                        ),
                        Text(
                          userage.toString(),
                          style: knumberStyle,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            RoundIconButton(
                              icon: FontAwesomeIcons.plus,
                              onpress: (){
                                setState(() {
                                  userage++;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onpress: (){
                                setState(() {
                                  userage--;
                                });
                              },
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class RoundIconButton extends StatelessWidget {
  RoundIconButton({@required this.icon, @required this.onpress});
  final IconData icon;
  final Function onpress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      onPressed: onpress,
      child: Icon(icon),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}




