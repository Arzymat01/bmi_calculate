import 'dart:convert';

import 'package:bmi_calculate/utils/colors.dart';
import 'package:bmi_calculate/utils/text.dart';
import 'package:flutter/material.dart';

Future<void> showMyDialog({
  required BuildContext context,
  required String text,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (
      BuildContext context,
    ) {
      return AlertDialog(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          Apptext.appbartitle,
          textAlign: TextAlign.center,
          style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 28,
              fontWeight: FontWeight.bold),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                text,
                style: const TextStyle(
                  color: AppColors.whiteColor,
                  fontSize: 22,
                  fontFamily: 'Lobster',
                ),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Кайра эсептөө', style: TextStyle(fontSize: 15)),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
