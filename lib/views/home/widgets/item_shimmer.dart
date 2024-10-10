import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget itemShimmer(BuildContext context) {
  return Shimmer.fromColors(
      baseColor: AppColor.backgroundColor,
      highlightColor: AppColor.shadowColor.withOpacity(.5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        height: 100,
      ));
}
