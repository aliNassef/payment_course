import 'package:flutter/material.dart';
 
 import 'package:payment_course/checkout/presentation/views/widgets/payment_methods.dart';

import 'widgets/app_button.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
        leading: BackButton(
          onPressed: () {},
        ),
      ),
      body: const MyCartViewBody(),
    );
  }
}

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          Center(
              child: Image.asset(
            'assets/images/shopping_cart.png',
            height: MediaQuery.sizeOf(context).height * .45,
          )),
          const SizedBox(
            height: 25,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Order Subtotal'),
              Text('\$42.97'),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount'),
              Text('\$0'),
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping'),
              Text('\$8'),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Divider(),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Total',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                '\$50.97',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          AppButton(
            text: 'Complete Payment',
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) {
              //       return const CartDetailsView();
              //     },
              //   ),
              // );

              showBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                builder: (context) => const ChoosePaymentWay(),
              );
            },
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}

class ChoosePaymentWay extends StatelessWidget {
  const ChoosePaymentWay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          PaymentMethods(),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: AppButton(text: 'Pay'),
          ),
        ],
      ),
    );
  }
}
