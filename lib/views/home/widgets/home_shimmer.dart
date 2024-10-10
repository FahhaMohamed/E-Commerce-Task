import 'package:e_commerce_task/views/home/widgets/home_item_shimmer.dart';
import 'package:flutter/material.dart';

Widget homeShimmer(BuildContext context) {
  return Expanded(
      child: GridView.builder(
    shrinkWrap: true,
    physics: const AlwaysScrollableScrollPhysics(),
    itemCount: 10,
    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      childAspectRatio: .905,
    ),
    itemBuilder: (context, index) {
      return homeItemShimmer(context);
    },
  ));
}
