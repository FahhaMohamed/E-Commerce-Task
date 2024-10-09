import 'package:e_commerce_task/views/home/widgets/category_list.dart';
import 'package:e_commerce_task/views/home/widgets/items_list_widget.dart';
import 'package:e_commerce_task/views/home/widgets/search_widget.dart';
import 'package:e_commerce_task/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            subTextBold(text: "Find your items"),

            //search functionality
            const SearchWidget(),

            //category horizontal list
            CategoryList(isSelect: isSelect),

            subTextBold(text: "Items"),

            const SizedBox(
              height: 10,
            ),

            //add list of items
            const ItemListWidget()
          ],
        ),
      )),
    );
  }
}
