import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CustomCreditCard extends StatefulWidget {
  const CustomCreditCard({
    super.key, required this.formKey,
  });
  final GlobalKey<FormState> formKey;

  @override
  State<CustomCreditCard> createState() => _CustomCreditCardState();
}

class _CustomCreditCardState extends State<CustomCreditCard> {
  String cardNumber = '', expiryDate = '', cvvCode = '', cardHolderName = '';
  bool showBackView = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CreditCardWidget(
          
          isHolderNameVisible: true,
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          showBackView:
              showBackView, //true when you want to show cvv(back) view
          onCreditCardWidgetChange: (CreditCardBrand brand) {
            brand.brandName = CardType.visa;
          }, // Callback for anytime credit card brand is changed
        ),
        CreditCardForm(
          cardNumber: cardNumber,
          expiryDate: expiryDate,
          cardHolderName: cardHolderName,
          cvvCode: cvvCode,
          onCreditCardModelChange: (creditCardModel) {
            cardNumber = creditCardModel.cardNumber;
            expiryDate = creditCardModel.expiryDate;
            cardHolderName = creditCardModel.cardHolderName;
            cvvCode = creditCardModel.cvvCode;
            showBackView = creditCardModel.isCvvFocused;
            setState(() {});
          },
          formKey: widget.formKey,
        ),
      ],
    );
  }
}
