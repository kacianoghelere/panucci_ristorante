import 'package:flutter/material.dart';
import 'package:panucci_ristorante/themes/app_colors.dart';

class PaymentMethod extends StatelessWidget {
  const PaymentMethod({ super.key });

  @override
  Widget build(BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        const SizedBox(
          width: 30,
          child: Image(
            image: AssetImage("assets/images/visa.png"),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Text(
                  "VISA Classic",
                  style: TextStyle(fontWeight: FontWeight.w500)
                ),
                Text(
                  "****-6789",
                  style: TextStyle(color: AppColors.paymentMethodCardNumberColor)
                ),
              ],
            ),
          ),
        ),
        const Icon(Icons.arrow_forward_ios),
      ]
    );
  }
}
