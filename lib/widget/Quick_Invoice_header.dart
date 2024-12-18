// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: Styles.styleSemiBold20(context),
        ),
        const Spacer(),
        const CircleAvatar(
          backgroundColor: Color(0xfffafafa),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ),
          ),
        )
      ],
    );
  }
}
