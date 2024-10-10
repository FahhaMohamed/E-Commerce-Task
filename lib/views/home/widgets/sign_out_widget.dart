import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:e_commerce_task/services/auth_service.dart';
import 'package:e_commerce_task/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SignOutWidget extends StatelessWidget {
  SignOutWidget({
    super.key,
  });

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        alignment: Alignment.center,
        height: 70,
        child: Column(
          children: [
            subTextBold(text: 'Are sure to sign out?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.shadowColor),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: subTextBold(text: "No"),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.buttonColor),
                  onPressed: () async {
                    Navigator.pop(context);
                    await _auth.signOut(context);

                  },
                  child: subTextBold(text: "Sign out"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
