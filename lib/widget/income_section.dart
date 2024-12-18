import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/custom_background_container.dart';
import 'package:responsive_ui/widget/income_section_body.dart';

import 'income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      children: [
        IncomeSectionHeader(),
        IncomSectionBody(),
      ],
    ));
  }
}
