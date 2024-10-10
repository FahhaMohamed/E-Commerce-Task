import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/contants/global.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget carousalShimmer(BuildContext context) {
  double w = getScreenWidth(context);
  return Shimmer.fromColors(
      baseColor: AppColor.backgroundColor,
      highlightColor: AppColor.shadowColor.withOpacity(.5),
      child: Container(
        decoration: BoxDecoration(
          color: AppColor.backgroundColor,
          borderRadius: BorderRadius.circular(5),
        ),
        width: w * .6,
      ));
}
