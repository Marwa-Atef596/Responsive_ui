
import 'package:flutter/material.dart';

import '../utils/styles.dart';

class RangeOptions extends StatelessWidget {
  const RangeOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xfff1f1f1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Monthly',
            style: Styles.styleMedium16(context),
          ),
          const SizedBox(
            width: 18,
          ),
          Transform.rotate(
              angle: -1.57079633,
              child: const Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Color(0xFF064061),
              ))
        ],
      ),
    );
  }
}
