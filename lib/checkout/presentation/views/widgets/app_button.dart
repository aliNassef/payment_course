import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    this.onTap, required this.text,
  });
  final void Function()? onTap;
  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 73,
        decoration: BoxDecoration(
          color: const Color(0xff34A853),
          borderRadius: BorderRadius.circular(15),
        ),
        alignment: Alignment.center,
        child:  Text(
          text,
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
