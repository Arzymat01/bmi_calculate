import 'package:flutter/material.dart';

import '../utils/colors.dart';

class CardStatus extends StatelessWidget {
  const CardStatus({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        color: AppColors.cardColor,
        child: child,
      ),
    );
  }
}
