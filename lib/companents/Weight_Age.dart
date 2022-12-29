import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/textStyles.dart';

import 'package:flutter/material.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    Key? key,
    required this.text,
    required this.value,
    required this.add,
    required this.remove,
  }) : super(key: key);
  final String text;
  final int value;
  final void Function(int) remove;
  final void Function(int) add;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: Appstyle.textGreyF22,
        ),
        Text(
          '$value',
          style: Appstyle.textWhiteF50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RemoveAdd(
              iconData: Icons.remove,
              onPressed: () => remove(value - 1),
            ),
            const SizedBox(width: 20),
            RemoveAdd(
              iconData: Icons.add,
              onPressed: () => add(value + 1),
            ),
          ],
        ),
      ],
    );
  }
}

class RemoveAdd extends StatelessWidget {
  const RemoveAdd({
    Key? key,
    required this.iconData,
    required this.onPressed,
  }) : super(key: key);
  final IconData iconData;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.btn2Color,
      foregroundColor: AppColors.whiteColor,
      onPressed: onPressed,
      child: Icon(
        iconData,
        size: 30,
      ),
    );
  }
}
