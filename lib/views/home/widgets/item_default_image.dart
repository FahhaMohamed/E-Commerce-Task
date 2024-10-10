import 'package:e_commerce_task/core/contants/global.dart';
import 'package:flutter/material.dart';

class ItemDefaultImage extends StatelessWidget {
  const ItemDefaultImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.defaultThumbnail,
      fit: BoxFit.contain,
      height: 100,
      width: double.infinity,
    );
  }
}