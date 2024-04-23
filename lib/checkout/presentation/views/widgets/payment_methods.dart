import 'package:flutter/material.dart';
import 'package:payment_course/checkout/presentation/views/widgets/payment_method_item.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  final List<String> paymentMethodsItem = const [
    'assets/images/master_cart.svg',
    'assets/images/paypal.svg',
  ];
  int currentIdex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        itemCount: paymentMethodsItem.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: GestureDetector(
              onTap: () {
                currentIdex = index;
                setState(() {});
              },
              child: PaymentMethodItem(
                isActive: currentIdex == index,
                img: paymentMethodsItem[index],
              ),
            ),
          );
        },
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
