import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/textStyles.dart';
import 'package:flutter/material.dart';

class MaleFemale extends StatelessWidget {
  const MaleFemale({
    Key? key,
    required this.icon,
    required this.text,
    required this.isFemale,
  }) : super(key: key);

  final IconData icon;
  final String text;
  final bool isFemale;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
          color: !isFemale ? AppColors.whiteColor : AppColors.bttn1Color,
        ),
        Text(text, style: Appstyle.textGreyF22),
      ],
    );
  }
}
