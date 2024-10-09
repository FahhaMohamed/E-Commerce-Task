import 'package:flutter/material.dart';

Text headText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w600, fontSize: 18),
  );
}

Text subText({required String text}) {
  return Text(
    text,
    style: const TextStyle(
        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 15),
  );
}
