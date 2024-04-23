import 'package:flutter/material.dart';
import 'widgets/cart_details_view_body.dart';

class CartDetailsView extends StatelessWidget {
  const CartDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Payment Details',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: BackButton(
          onPressed: () {
            
          },
        ),
      ),
      body: const CartDetailsViewBody(),
    );
  }
}
