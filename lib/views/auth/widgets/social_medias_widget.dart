import 'package:e_commerce_task/contants/global.dart';
import 'package:flutter/material.dart';

class SocialMediasWidget extends StatelessWidget {
  final VoidCallback googleTap;
  final VoidCallback facebookTap;
  const SocialMediasWidget({
    super.key,
    required this.googleTap,
    required this.facebookTap,
  });

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //google
        GestureDetector(
          onTap: googleTap,
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
          onTap: facebookTap,
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
