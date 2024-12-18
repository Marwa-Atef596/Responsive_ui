import 'package:flutter/material.dart';

import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class CardandTransctionandIncome extends StatelessWidget {
  const CardandTransctionandIncome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MyCardsAndTransctionHistorySection(),
        SizedBox(
          height: 24,
        ),
        Expanded(
          child: IncomeSection(),
        )
      ],
    );
  }
}
