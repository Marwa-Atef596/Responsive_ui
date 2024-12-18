import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/styles.dart';

import 'range_options.dart';

class ALLExpensesHeader extends StatelessWidget {
  const ALLExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Styles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions()
      ],
    );
  }
}
