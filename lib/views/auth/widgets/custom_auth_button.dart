import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:flutter/cupertino.dart';

class CustomAuthButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  const CustomAuthButton({super.key, required this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, bottom: 30, left: 8, right: 8),
      child: CupertinoButton(
          onPressed: onTap,
          color: AppColor.buttonColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(title),
            ],
          )),
    );
  }
}
