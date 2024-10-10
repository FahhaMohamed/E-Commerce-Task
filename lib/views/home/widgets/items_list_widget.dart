import 'package:e_commerce_task/controllers/product_controller.dart';
import 'package:e_commerce_task/views/detail/detail_page.dart';
import 'package:e_commerce_task/views/home/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemListWidget extends StatelessWidget {
  ItemListWidget({
    super.key,
  });

  final ProductController productController = Get.put(ProductController());

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (productController.isLoading.value) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return Expanded(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const AlwaysScrollableScrollPhysics(),
          itemCount: productController.productList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: .8,
          ),
          itemBuilder: (context, index) {
            var product = productController.productList[index];
            return GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => DetailPage(
                          product: product,
                        ))),
                child: ItemWidget(
                  title: product.title,
                  brand: product.brand,
                  price: product.price,
                  thumbnail: product.thumbnail,
                ));
          },
        ),
      );
    });
  }
}
