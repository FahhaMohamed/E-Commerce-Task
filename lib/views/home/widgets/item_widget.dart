import 'package:cached_network_image/cached_network_image.dart';
import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/contants/global.dart';
import 'package:e_commerce_task/widgets/item_default_image.dart';
import 'package:e_commerce_task/widgets/item_shimmer.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String brand;
  final String thumbnail;
  final double price;
  const ItemWidget({
    super.key,
    required this.title,
    required this.brand,
    required this.price,
    required this.thumbnail,
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
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColor.backgroundColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: CachedNetworkImage(
              height: 100,
              imageUrl: thumbnail,
              placeholder: (context, url) => itemShimmer(context),
              errorWidget: (context, url, error) => const ItemDefaultImage(),
            ),
          ),
          const SizedBox(height: 8),
          itemNameText(text: title),
          const SizedBox(height: 4),
          brandNameText(text: brand),
          const SizedBox(height: 4),
          priceText(price: "\$ $price"),
        ],
      ),
    );
  }
}
