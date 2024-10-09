import 'package:e_commerce_task/views/home/widgets/category_widget.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
    required this.isSelect,
  });

  final bool isSelect;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      height: 55,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => CategoryWidget(
          isSelect: isSelect,
          text: 'Category',
        ),
      ),
    );
  }
}
