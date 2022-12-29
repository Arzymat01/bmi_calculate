import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/text.dart';
import 'package:bmi_calculate/utils/textStyles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderWidjet extends StatelessWidget {
  const SliderWidjet({
    Key? key,
    required this.currentSilderValue,
    required this.onChanged,
  }) : super(key: key);
  final double currentSilderValue;
  final void Function(double)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          Apptext.height,
          style: Appstyle.textGreyF22,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${currentSilderValue.toInt()}',
              style: Appstyle.textWhiteF50,
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 10),
              child: Text(
                Apptext.cm,
                style: Appstyle.textGreyF22,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          child: SizedBox(
            width: double.infinity,
            child: CupertinoSlider(
              max: 300,
              value: currentSilderValue,
              onChanged: onChanged,
              // (value) {
              //   // setState(() {
              //   //   currentSilderValue = value;
              //   // });
              // },
              activeColor: AppColors.whiteColor,
              thumbColor: AppColors.bttn1Color,
            ),
          ),
        ),
      ],
    );
  }
}
