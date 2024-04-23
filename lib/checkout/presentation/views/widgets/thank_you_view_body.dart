import 'package:flutter/material.dart';

import 'check_thank_you.dart';
import 'custom_dashed_line.dart';
import 'custom_thank_you_shape.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const CustomThankYouShape(),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2 + 20,
            left: 0,
            right: 0,
            child: const CustomDashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * .2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            top: -50,
            child: CheckThankYou(),
          ),
        ],
      ),
    );
  }
}
