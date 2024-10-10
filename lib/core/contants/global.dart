import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:flutter/material.dart';

const String apiUrl = "https://dummyjson.com/products";

class AppImages {
  static const String signUpImage = "images/signUp_vector.png";
  static const String loginImage = "images/login_vector.png";
  static const String googleLogo = "images/google_icon.png";
  static const String facebookLogo = "images/facebook_icon.png";
  static const String defaultThumbnail = "images/thumbnail_default.png";
}

double getScreenWidth(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

const BoxShadow shadowStyle =
    BoxShadow(color: AppColor.shadowColor, offset: Offset(0, 3), blurRadius: 5);
