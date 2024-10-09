import 'package:e_commerce_task/views/auth/widgets/custom_auth_button.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_divider.dart';
import 'package:e_commerce_task/views/auth/widgets/custom_text_field.dart';
import 'package:e_commerce_task/views/auth/widgets/social_medias_widget.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final double width;
  const LoginForm({super.key, required this.width});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
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
          CustomAuthButton(
            title: 'Log in',
            onTap: () {},
          ),
          //separate the social media auth
          const CustomDivider(title: "log in",),

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
