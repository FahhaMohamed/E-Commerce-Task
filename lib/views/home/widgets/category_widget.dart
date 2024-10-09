import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.isSelect, required this.text});

  final bool isSelect;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
      decoration: BoxDecoration(
          color: isSelect
              ? AppColor.buttonColor
              : const Color.fromARGB(255, 230, 230, 230),
          borderRadius: BorderRadius.circular(10)),
      child: categoryText(text: text, isSelect: isSelect),
    );
  }
}
