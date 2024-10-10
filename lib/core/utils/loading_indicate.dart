import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:e_commerce_task/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

void showLoadingDialog(BuildContext context, String msg) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext ctx) {
      return Dialog(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircularProgressIndicator(
                color: AppColor.buttonColor,
              ),
              const SizedBox(width: 20),
              subTextBold(text: msg),
            ],
          ),
        ),
      );
    },
  );
}

// Dismiss the dialog
void hideLoadingDialog(BuildContext context) {
  Navigator.of(context, rootNavigator: true).pop();
}
