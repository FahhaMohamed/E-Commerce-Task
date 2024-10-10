import 'package:e_commerce_task/core/contants/global.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double w = getScreenWidth(context);

    return Container(
        width: w * .6,
        margin: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Image.asset(AppImages.defaultThumbnail));
  }
}
