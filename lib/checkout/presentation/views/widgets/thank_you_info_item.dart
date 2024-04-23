
import 'package:flutter/material.dart';

class ThankYouInfoItem extends StatelessWidget {
  const ThankYouInfoItem(
      {super.key, required this.title, required this.subTitle});
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 18,
            fontFamily: 'Inter',
          ),
        ),
        Text(
          subTitle,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontFamily: 'Inter',
          ),
        ),
      ],
    );
  }
}
