import 'package:flutter/material.dart';
import 'package:responsive_ui/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgourndColor, this.textColor, required this.txt});
  final String txt;
  final Color? backgourndColor, textColor;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 0,
          backgroundColor: backgourndColor ?? const Color(0xFF4DB7F2),
        ),
        onPressed: () {},
        child: Text(
          txt,
          style: Styles.styleSemiBold18(context).copyWith(
            color: textColor,
          ),
        ),
      ),
    );
  }
}
