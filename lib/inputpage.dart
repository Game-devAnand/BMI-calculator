import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'reusecard.dart';
import 'cardchild.dart';
import 'bmistyle.dart';
import 'bottomContend.dart';
import 'functionbmi.dart';
import 'resultpage.dart';

const activeCardColour = Color(0xFF1D1E33);
const inactiveCardColour = Color(0xFF221328);
enum Gender { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColour = inactiveCardColour;
  Color femaleColour = inactiveCardColour;

  void updateColor(Gender gender) {
    gender == Gender.male
        ? maleColour = activeCardColour
        : maleColour = inactiveCardColour;
    gender == Gender.female
        ? femaleColour = activeCardColour
        : femaleColour = inactiveCardColour;
  }

  int hight = 150;
  int weight = 53;
  int age = 25;
  double result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  BMI CALCULATOR'),
      ),
      body: Center(
          child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.male);
                      });
                    },
                    child: ReuseCard(
                      colour: maleColour,
                      cardChild: CardChild(
                        icon: FontAwesomeIcons.mars,
                        texts: 'male',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(Gender.female);
                      });
                    },
                    child: ReuseCard(
                        colour: femaleColour,
                        cardChild: CardChild(
                          icon: FontAwesomeIcons.venus,
                          texts: 'female',
                        )),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('HIGHT'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              hight.toString(),
                              style: kNumberstyle,
                            ),
                            Text('cm')
                          ],
                        ),
                        SliderTheme(
                          data: SliderTheme.of(context).copyWith(
                            activeTrackColor: Colors.white,
                            inactiveTrackColor: Colors.grey,
                            thumbColor: Color(0xFFEB1555),
                            thumbShape:
                                RoundSliderThumbShape(enabledThumbRadius: 15.0),
                            overlayShape:
                                RoundSliderOverlayShape(overlayRadius: 30.0),
                            overlayColor: Color(0x19EB1555),
                          ),
                          child: Slider(
                            value: hight.toDouble(),
                            min: 120,
                            max: 220,
                            onChanged: (double newValue) {
                              setState(() {
                                hight = newValue.round();
                                print(hight);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      children: [
                        BottomComponent(
                          mainText: 'Weight',
                          givenNumber: weight,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  weight += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              onPress: () {
                                setState(() {
                                  weight -= 1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReuseCard(
                    colour: activeCardColour,
                    cardChild: Column(
                      children: [
                        BottomComponent(
                          mainText: 'Age',
                          givenNumber: age,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Roundbutton(
                              icon: FontAwesomeIcons.plus,
                              onPress: () {
                                setState(() {
                                  age += 1;
                                });
                              },
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Roundbutton(
                              onPress: () {
                                setState(() {
                                  age -= 1;
                                });
                              },
                              icon: FontAwesomeIcons.minus,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: EdgeInsets.only(bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  FunctionBmi cal = FunctionBmi(hight: hight,weight: weight);

                  Navigator.push(context, MaterialPageRoute(builder: (context) => Resutl(
                     result: cal.getResult(),
                     bmi:cal.bmi() ,
                    inter:cal.getInterpret() ,
                  ),),);

                  // String bmi = cal.bmi();
                  // String inter = cal.getInterpret();
                  // String result =cal.getResult();

                },
                child: Center(
                  child: Text(
                    'CALCULATE',
                    style: kCalculatestyle,
                  ),
                ),
              ),
            ),
            color: Color(0xFFEB1555),
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: 80.0,
          ),
        ],
      ),),
    );
  }
}
