import 'package:e_commerce_task/views/auth/widgets/custom_auth_button.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_divider.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_text_field.dart';
import 'package:e_commerce_task/views/auth/widgets/social_medias_widget.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatefulWidget {
  final double width;
  const SignUpForm({super.key, required this.width});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          CustomTextField(
            hintText: 'Email address',
          ),
          CustomTextField(
            hintText: 'Password',
          ),
          CustomTextField(
            hintText: 'Confirm Password',
          ),
          CustomAuthButton(
            title: 'Sign Up',
            onTap: () {},
          ),
          //separate the social media auth
          const CustomDivider(
            title: "sign in",
          ),

          //add google & facebook
          SocialMediasWidget(
            googleTap: () {},
            facebookTap: () {},
          )
        ],
      ),
    );
  }
}
