import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/all_expenses_item_listview.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          ALLExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListview()
        ],
      ),
    );
  }
}
