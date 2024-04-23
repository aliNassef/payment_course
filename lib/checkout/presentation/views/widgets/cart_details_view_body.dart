import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:payment_course/checkout/presentation/views/widgets/app_button.dart';
import 'custom_credit_card.dart';
import 'payment_methods.dart';
import 'thank_you_view.dart';

class CartDetailsViewBody extends StatefulWidget {
  const CartDetailsViewBody({super.key});

  @override
  State<CartDetailsViewBody> createState() => _CartDetailsViewBodyState();
}

class _CartDetailsViewBodyState extends State<CartDetailsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: PaymentMethods(),
        ),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              child: AppButton(
                text: 'Payment',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('message');
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const ThankYouView();
                        },
                      ),
                    );
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
