import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/all_expenses_item.dart';

import '../model/all_expenses_item_model.dart';
import '../utils/App_images.dart';

class AllExpensesItemListview extends StatefulWidget {
  const AllExpensesItemListview({super.key});

  @override
  State<AllExpensesItemListview> createState() =>
      _AllExpensesItemListviewState();
}

class _AllExpensesItemListviewState extends State<AllExpensesItemListview> {
  final items = [
    const AllExpensesItemModel(
        image: Assets.imagesBalance,
        title: 'Balance',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesIncome,
        title: 'Income',
        date: 'April 2022',
        price: r'$20,129'),
    const AllExpensesItemModel(
        image: Assets.imagesExpenses,
        title: 'Expenses',
        date: 'April 2022',
        price: r'$20,129'),
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedindex == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedindex == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              updateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedindex == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        )
      ],
    );

    // return Row(
    //   children: items.asMap().entries.map((e) {
    //     int index = e.key;
    //     var item = e.value;
    //     return Expanded(
    //       child: GestureDetector(
    //         onTap: () {
    //           updateIndex(index);
    //         },
    //         child: Padding(
    //           padding: EdgeInsets.symmetric(horizontal: index == 1 ? 12 : 0),
    //           child: AllExpensesItem(
    //             allExpensesItemModel: item,
    //             isSelected: selectedindex == index,
    //           ),
    //         ),
    //       ),
    //     );
    //   }).toList(),
    // );
  }

  void updateIndex(int index) {
    setState(() {
      selectedindex = index;
    });
  }
}
