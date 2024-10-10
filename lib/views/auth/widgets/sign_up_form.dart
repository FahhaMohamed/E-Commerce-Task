import 'package:e_commerce_task/services/auth_service.dart';
import 'package:e_commerce_task/utils/loading_indicate.dart';
import 'package:e_commerce_task/utils/validator.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_auth_button.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_divider.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_text_field.dart';
import 'package:e_commerce_task/views/auth/widgets/social_medias_widget.dart';
import 'package:e_commerce_task/views/home/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpForm extends StatefulWidget {
  final double width;
  const SignUpForm({super.key, required this.width});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  late TextEditingController emailEditingController;
  late TextEditingController passwordEditingController;
  late TextEditingController confirmPasswordEditingController;

  final AuthService _auth = AuthService();

  @override
  void initState() {
    super.initState();
    emailEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
    confirmPasswordEditingController = TextEditingController();
  }

  @override
  void dispose() {
    emailEditingController.dispose();
    passwordEditingController.dispose();
    confirmPasswordEditingController.dispose();
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
          CustomTextField(
            controller: confirmPasswordEditingController,
            hintText: 'Confirm Password',
          ),
          CustomAuthButton(
            title: 'Sign Up',
            onTap: () async {
              if (validSignUpFields(
                  emailEditingController.text,
                  passwordEditingController.text,
                  confirmPasswordEditingController.text)) {
                //show loading
                showLoadingDialog(context, 'Sign up...');

                //email & password sign up
                User? user = await _auth.signUpWithEmailPassword(
                    emailEditingController.text.trim(),
                    passwordEditingController.text.trim());

                // ignore: use_build_context_synchronously
                hideLoadingDialog(context);

                if (user != null) {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomePage()));
                  Get.snackbar('Success', 'You successfully sign up.');
                }
              }
            },
          ),
          //separate the social media auth
          const CustomDivider(
            title: "sign in",
          ),

          //add google & facebook
          const SocialMediasWidget(
            title: 'Sign in...',
          )
        ],
      ),
    );
  }
}
