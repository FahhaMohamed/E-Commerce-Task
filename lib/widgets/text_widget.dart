import 'package:e_commerce_task/contants/colors.dart';
import 'package:flutter/material.dart';

Text headText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
  );
}

Text subTextBold({required String text}) {
  return Text(
    text,
    style: const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
  );
}

Text categoryText({required String text, required bool isSelect}) {
  return Text(
    text,
    style: TextStyle(
        color: isSelect
            ? AppColor.backgroundColor
            : const Color.fromARGB(255, 71, 83, 255),
        fontSize: 15),
  );
}

Text priceText({required String price}) {
  return Text(
    price,
    style: const TextStyle(
      color: Color.fromARGB(255, 65, 78, 255),
      fontWeight: FontWeight.w500,
      fontSize: 15,
    ),
  );
}

Text brandNameText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
      color: Colors.grey,
      overflow: TextOverflow.ellipsis,
      fontWeight: FontWeight.w400,
      fontSize: 14,
    ),
  );
}

Text itemNameText({required String text}) {
  return Text(
    text,
    overflow: TextOverflow.ellipsis,
    style: const TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.w600,
      fontSize: 16,
    ),
  );
}
