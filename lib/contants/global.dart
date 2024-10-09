import 'package:e_commerce_task/contants/colors.dart';
import 'package:flutter/material.dart';

class AppImages {
  static const String signUpImage = "images/signUp_vector.png";
  static const String loginImage = "images/login_vector.png";
  static const String googleLogo = "images/google_icon.png";
  static const String facebookLogo = "images/facebook_icon.png";
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

const BoxShadow shadowStyle =
     BoxShadow(color: AppColor.shadowColor, offset: Offset(0, 3), blurRadius: 5);
