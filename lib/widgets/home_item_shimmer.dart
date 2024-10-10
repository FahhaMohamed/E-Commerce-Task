import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/contants/global.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget homeItemShimmer(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [shadowStyle],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColor.backgroundColor,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Shimmer.fromColors(
              baseColor: AppColor.backgroundColor,
              highlightColor: AppColor.shadowColor.withOpacity(.5),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.backgroundColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                height: 180,
              )),
        )
      ],
    ),
  );
}
