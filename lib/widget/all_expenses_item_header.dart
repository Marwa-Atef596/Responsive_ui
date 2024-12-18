import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key, required this.img, this.bgColor, this.imageColor});
  final String img;
  final Color? bgColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: CircleAvatar(
                backgroundColor: bgColor ?? const Color(0xfffafafa),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Center(
                    child: SvgPicture.asset(
                      img,
                      colorFilter: ColorFilter.mode(
                          imageColor ?? const Color(0xff4EB7F2),
                          BlendMode.srcIn),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
            angle: -1.57079633 * 2,
            child: Icon(
              Icons.arrow_back_ios_new_outlined,
              color:
                  imageColor == null ? const Color(0xFF064061) : Colors.white,
            ))
      ],
    );
  }
}
