import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/contants/global.dart';
import 'package:e_commerce_task/views/auth/signUp/sign_up_page.dart';
import 'package:e_commerce_task/views/auth/widgets/auth_nav_widget.dart';
import 'package:e_commerce_task/views/auth/widgets/login_form.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
                  text: 'Welcome Back',
                ),

                //vector
                Image.asset(
                  AppImages.loginImage,
                  width: w * .7,
                ),

                //form
                LoginForm(
                  width: w,
                ),

                //back to login
                AuthNavigateWidget(
                  title: "Don't have an account",
                  pageTitle: "Sign Up",
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (_) => const SignUpPage())),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
