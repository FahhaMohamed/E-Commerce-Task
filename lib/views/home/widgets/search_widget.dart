import 'package:e_commerce_task/contants/colors.dart';
import 'package:e_commerce_task/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  final ProductController productController = Get.put(ProductController());
  final TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 40,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      margin: const EdgeInsets.only(bottom: 10, top: 10),
      decoration: BoxDecoration(
        color: AppColor.shadowColor.withOpacity(.15),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: .5,
          color: AppColor.shadowColor.withOpacity(.5),
        ),
      ),
      child: TextFormField(
        controller: searchController,
        onChanged: (value) {
          productController.filterProducts(value);
        },
        onTapOutside: (val) => FocusScope.of(context).unfocus(),
        cursorHeight: 17,
        cursorColor: Colors.black,
        style: const TextStyle(
          decoration: TextDecoration.none,
          color: Colors.black,
          height: .75, // Adjust the text's vertical alignment
        ),
        decoration: const InputDecoration(
          hintText: 'Search...',
          hintStyle: TextStyle(
              color: Color.fromARGB(255, 174, 174, 174),
              fontWeight: FontWeight.w500),
          border: InputBorder.none,
          suffixIcon: Icon(
            Icons.search,
            color: AppColor.buttonColor,
          ),
          // Center vertically
        ),
      ),
    );
  }
}
