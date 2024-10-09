import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/contants/global.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: const [shadowStyle],
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              AppImages.defaultThumbnail,
              fit: BoxFit.contain,
              height: 100,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 8),
          itemNameText(text: "Product Name"),
          const SizedBox(height: 4),
          brandNameText(text: "Brand Name"),
          const SizedBox(height: 4),
          priceText(price: "Rs. 2200"),
        ],
      ),
    );
  }
}
