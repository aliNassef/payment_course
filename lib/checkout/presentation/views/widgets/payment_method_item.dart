import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    this.isActive = false,
    required this.img,
  });
  final bool isActive;
  final String img;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 600),
      alignment: Alignment.center,
      width: 100,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: isActive ? const Color(0xff34A853) : Colors.grey,
          width: 1.5,
        ),
        boxShadow: [
          BoxShadow(
            color: isActive ? const Color(0xff34A853) : Colors.grey.shade200,
            spreadRadius: 0.02,
            offset: const Offset(0, 0),
            blurRadius: 1,
          )
        ],
        color: Colors.white,
      ),
      child: SvgPicture.asset(
        img,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
