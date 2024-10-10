import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:e_commerce_task/core/contants/global.dart';
import 'package:e_commerce_task/views/auth/widgets/auth_nav_widget.dart';
import 'package:e_commerce_task/views/auth/widgets/sign_up_form.dart';
import 'package:e_commerce_task/core/utils/text_styles.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double w = getScreenWidth(context);

    return Scaffold(
      backgroundColor: AppColor.authBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //title
                headText(
                  text: 'Create Account',
                ),

                //vector
                Image.asset(
                  AppImages.signUpImage,
                  width: w * .7,
                ),

                //form
                SignUpForm(
                  width: w,
                ),

                //back to login
                AuthNavigateWidget(
                  title: "Already have an account",
                  pageTitle: "Log in",
                  onTap: () => Navigator.pop(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
