import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/styles.dart';
import 'package:responsive_ui/widget/latest_transaction_listview.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Styles.styleMedium16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListview(),
       
       
      ],
    );
  }
}