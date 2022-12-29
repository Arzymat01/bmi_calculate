import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/text.dart';
import 'package:bmi_calculate/utils/textStyles.dart';
import 'package:flutter/material.dart';

class Calculatebutton extends StatelessWidget {
  const Calculatebutton({
    Key? key,
    required this.ontap,
  }) : super(key: key);
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width: double.infinity,
        color: AppColors.bttn1Color,
        height: 70,
        child: const Center(
          child: Text(
            Apptext.buttontext,
            style: Appstyle.textWhiteF26,
          ),
        ),
      ),
    );
  }
}
