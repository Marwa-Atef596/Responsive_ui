// ignore_for_file: file_names

import 'package:flutter/material.dart';

import 'Quick_Invoice.dart';
import 'all_expenses.dart';

class AllExpensesAndQuickInvoceSection extends StatelessWidget {
  const AllExpensesAndQuickInvoceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 24,
        ),
        QuickInvoice(),
      ],
    );
  }
}
