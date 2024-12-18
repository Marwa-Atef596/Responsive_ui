import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/styles.dart';
import 'package:responsive_ui/widget/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({super.key, required this.text, required this.hint});
  final String text, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: Styles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(hint: hint),
      ],
    );
  }
}
