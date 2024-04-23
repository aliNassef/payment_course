import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_course/checkout/presentation/views/widgets/thank_you_info_item.dart';

class CustomThankYouShape extends StatelessWidget {
  const CustomThankYouShape({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xffD9D9D9),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            const Text(
              'Thank you!',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: 'Inter',
                fontSize: 25,
              ),
            ),
            Text(
              'Your transaction was successful',
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 20,
                fontFamily: 'Inter',
                color: Colors.black.withOpacity(0.9),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const ThankYouInfoItem(
              title: 'Date',
              subTitle: '01/24/2023',
            ),
            const SizedBox(
              height: 15,
            ),
            const ThankYouInfoItem(
              title: 'Time',
              subTitle: '10:15 AM',
            ),
            const SizedBox(
              height: 15,
            ),
            const ThankYouInfoItem(
              title: 'To',
              subTitle: 'Sam Louis',
            ),
            const Divider(
              thickness: 2,
              height: 20,
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
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 23),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/master_cart._logo.svg'),
                    const SizedBox(
                      width: 23,
                    ),
                    const Text('Credit Card\n Mastercard **78')
                    // const Column(
                    //   mainAxisSize: MainAxisSize.min,
                    //   children: [
                    //     Text.rich(TextSpan(children: [
                    //       TextSpan(
                    //         text: 'Credit Card',
                    //       ),
                    //       TextSpan(
                    //         text: 'Mastercard **78 ',
                    //       ),
                    //     ]))
                    //   ],
                    // )
                  ],
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/bar_code.svg'),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 22, vertical: 16),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xff34A853),
                      width: 1.5,
                    ),
                  ),
                  child: const Text(
                    'PAID',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff34A853),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ((MediaQuery.sizeOf(context).height * .2 + 20) / 2) - 29,
            )
          ],
        ),
      ),
    );
  }
}
