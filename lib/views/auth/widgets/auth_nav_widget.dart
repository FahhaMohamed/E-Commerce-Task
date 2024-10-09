import 'package:flutter/material.dart';

class AuthNavigateWidget extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final String pageTitle;
  const AuthNavigateWidget({
    super.key,
    required this.onTap,
    required this.title,
    required this.pageTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$title?  ",
              style: const TextStyle(
                  color: Color.fromARGB(255, 54, 54, 54), fontSize: 13)),
          GestureDetector(
            onTap: onTap,
            child: Text(
              pageTitle,
              style: const TextStyle(color: Color.fromARGB(255, 62, 75, 253)),
            ),
          ),
        ],
      ),
    );
  }
}
