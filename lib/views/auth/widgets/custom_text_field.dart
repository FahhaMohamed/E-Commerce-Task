import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  bool isPassword;

  CustomTextField(
      {super.key,
      required this.hintText,
      this.isPassword = false,
      required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(7),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      height: 40,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: const Color.fromARGB(255, 224, 224, 224))),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        controller: controller,
        keyboardType: isPassword
            ? TextInputType.visiblePassword
            : TextInputType.emailAddress,
        obscureText: isPassword,
        decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
                color: Colors.grey, fontSize: 15, fontWeight: FontWeight.w400)),
        cursorHeight: 18,
        style: const TextStyle(height: .04, fontSize: 15),
      ),
    );
  }
}
