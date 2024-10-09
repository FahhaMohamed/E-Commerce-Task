import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/views/detail/widgets/carosal_widget.dart';
import 'package:e_commerce_task/views/detail/widgets/rating_widget.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.backgroundColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
        centerTitle: true,
        title: const Text(
          "Product Details",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CarousalWidget(),
                const SizedBox(height: 20),

                // Product Name and Price
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    itemNameText(text: "Product Name"),
                    priceText(price: "Rs. 2200"),
                  ],
                ),
                const SizedBox(height: 10),

                // Brand Name and Rating
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    brandNameText(text: "Brand Name"),
                    const CustomRatingWidget(),
                  ],
                ),
                const SizedBox(height: 20),

                // Description Section
                const Text(
                  "Description",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "This is a detailed description of the product. It includes all the key features and details that make this product special. You can provide more information here about its benefits, material, size, and other important attributes.",
                  style: TextStyle(fontSize: 14, height: 1.5),
                ),
                const SizedBox(height: 20),

                // Add more sections like reviews, similar products, etc. if needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
