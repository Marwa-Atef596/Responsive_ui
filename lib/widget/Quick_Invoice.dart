// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:responsive_ui/widget/Quick_Invoice_header.dart';
import 'package:responsive_ui/widget/custom_background_container.dart';
import 'package:responsive_ui/widget/latest_transaction.dart';
import 'package:responsive_ui/widget/quick_invoice_form.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 24,
          ),
          LatestTransaction(),
          Divider(
            height: 48,
            color: Color(0xfff1f1f1),
          ),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
