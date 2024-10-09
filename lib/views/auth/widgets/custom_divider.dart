import 'package:e_commerce_task/contants/global.dart';
import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  final String title;
  const CustomDivider({
    super.key, required this.title,
  });

  @override
  Widget build(BuildContext context) {
    double width = getScreenWidth(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          width: width * .3,
          child: const Divider(
            color: Colors.grey,
          ),
        ),
        Text(
          "Or $title with",
          style: const TextStyle(
              fontSize: 14, color: Color.fromARGB(255, 122, 122, 122)),
        ),
        SizedBox(
          width: width * .3,
          child: const Divider(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
