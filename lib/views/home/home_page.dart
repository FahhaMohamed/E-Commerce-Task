import 'package:e_commerce_task/core/contants/colors.dart';
import 'package:e_commerce_task/views/home/widgets/items_list_widget.dart';
import 'package:e_commerce_task/views/home/widgets/search_widget.dart';
import 'package:e_commerce_task/views/home/widgets/sign_out_widget.dart';
import 'package:e_commerce_task/core/utils/text_styles.dart';
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                subTextBold(text: "Find your items"),
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => SignOutWidget());
                    },
                    icon: const Icon(
                      Icons.logout,
                      color: AppColor.buttonColor,
                    ))
              ],
            ),

            //search functionality
            const SearchWidget(),

            const SizedBox(
              height: 10,
            ),

            subTextBold(text: "Items"),

            const SizedBox(
              height: 10,
            ),

            //add list of items
            ItemListWidget()
          ],
        ),
      )),
    );
  }
}
