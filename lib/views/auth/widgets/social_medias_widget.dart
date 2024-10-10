import 'package:e_commerce_task/contants/global.dart';
import 'package:e_commerce_task/services/auth_service.dart';
import 'package:e_commerce_task/utils/loading_indicate.dart';
import 'package:e_commerce_task/views/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SocialMediasWidget extends StatelessWidget {
  final String title;
  const SocialMediasWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final AuthService _auth = AuthService();

    double width = getScreenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //google
        GestureDetector(
          onTap: () async {
            showLoadingDialog(context, title);

            User? user = await _auth.signInWithGoogle();

            hideLoadingDialog(context);

            if (user != null) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomePage()));
              Get.snackbar('Success', 'You successfully login.');
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [shadowStyle]),
            width: width * .15,
            child: Image.asset(AppImages.googleLogo),
          ),
        ),
        SizedBox(
          width: width * .1,
        ),
        //facebook
        GestureDetector(
          onTap: () async {
            showLoadingDialog(context, title);

            User? user = await _auth.signInWithFacebook();

            hideLoadingDialog(context);

            if (user != null) {
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const HomePage()));
              Get.snackbar('Success', 'You successfully login.');
            }
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.all(7.5),
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                boxShadow: const [shadowStyle]),
            width: width * .15,
            child: Image.asset(AppImages.facebookLogo),
          ),
        )
      ],
    );
  }
}
