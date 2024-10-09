import 'package:e_commerce_task/views/detail/detail_page.dart';
import 'package:e_commerce_task/views/home/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        physics: const AlwaysScrollableScrollPhysics(),
        itemCount: 11,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: .8,
        ),
        itemBuilder: (context, index) => GestureDetector(
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (_) => const DetailPage())),
            child: const ItemWidget()),
      ),
    );
  }
}
