// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../utils/styles.dart';

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: Styles.styleSemiBold20(context),
        ),
        Text(
          'See all',
          style: Styles.styleMedium16(context).copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
