
import 'package:flutter/material.dart';

class CheckThankYou extends StatelessWidget {
  const CheckThankYou({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Color(0xffD9D9D9),
      child: CircleAvatar(
        radius: 40,
        backgroundColor: Colors.green,
        child: Icon(
          Icons.check,
          color: Colors.white,
          size: 45,
        ),
      ),
    );
  }
}
