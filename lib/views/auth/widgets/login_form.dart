import 'package:e_commerce_task/services/auth_service.dart';
import 'package:e_commerce_task/core/utils/loading_indicate.dart';
import 'package:e_commerce_task/core/utils/validator.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_auth_button.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_divider.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_text_field.dart';
import 'package:e_commerce_task/views/auth/widgets/social_medias_widget.dart';
import 'package:e_commerce_task/views/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatefulWidget {
  final double width;
  const LoginForm({super.key, required this.width});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final AuthService _auth = AuthService();
  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;

  @override
  void initState() {
    super.initState();
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CustomTextField(
            controller: emailEditingController,
            hintText: 'Email address',
          ),
          CustomTextField(
            controller: passwordEditingController,
            hintText: 'Password',
          ),
          CustomAuthButton(
            title: 'Log in',
            onTap: () async {
              if (validLogInFields(emailEditingController.text,
                  passwordEditingController.text)) {
                showLoadingDialog(context, 'Login...');

                User? user = await _auth.loginWithEmailPassword(
                    emailEditingController.text.trim(),
                    passwordEditingController.text.trim());

                hideLoadingDialog(context);

                if (user != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomePage()));
                  Get.snackbar('Success', 'You successfully login.');
                }
              }
            },
          ),
          //separate the social media auth
          const CustomDivider(
            title: "log in",
          ),

          //add google & facebook
          const SocialMediasWidget(
            title: 'Login...',
          )
        ],
      ),
    );
  }
}
