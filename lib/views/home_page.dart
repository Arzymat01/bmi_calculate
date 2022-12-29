import 'dart:math';

import 'package:bmi_calculate/companents/alert.dart';
import 'package:bmi_calculate/companents/maleFamele.dart';
import 'package:bmi_calculate/companents/slider.dart';
import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/text.dart';
import 'package:bmi_calculate/utils/textStyles.dart';

import 'package:flutter/material.dart';

import '../companents/Weight_Age.dart';
import '../companents/calculateButton.dart';
import '../companents/status_.card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isFemale = false;
  double height = 180;
  int weight = 60;
  int age = 28;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        title: const Text(Apptext.appbartitle, style: Appstyle.textWhF22),
        centerTitle: true,
        backgroundColor: AppColors.backgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                children: [
                  CardStatus(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: Apptext.male,
                        isFemale: !isFemale,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CardStatus(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isFemale = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: Apptext.female,
                        isFemale: isFemale,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CardStatus(
              child: SliderWidjet(
                currentSilderValue: height,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Row(
                children: [
                  CardStatus(
                    child: WeightAge(
                      text: Apptext.weight,
                      value: weight,
                      remove: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          weight = maani;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  CardStatus(
                    child: WeightAge(
                      text: Apptext.age,
                      value: age,
                      remove: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                      add: (maani) {
                        setState(() {
                          age = maani;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Calculatebutton(
        ontap: () {
          final result = weight / pow(height / 100, 2);
          if (result < 18.5) {
            showMyDialog(
              context: context,
              text: 'Сиздин салмакгыныз аз экен',
            );
          } else if (result >= 18.5 && result <= 24.9) {
            showMyDialog(
              context: context,
              text: 'Сиздин салмакгыныз нормалдуу ',
            );
          } else if (result > 24.9) {
            showMyDialog(
              context: context,
              text: 'Сиздин салмакгыныз ашыкча экен',
            );
          } else {
            showMyDialog(
              context: context,
              text: 'Катачылык кетти',
            );
          }
        },
      ),
    );
  }
}
