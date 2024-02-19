import 'package:adaptive_dash_board/models/enter_your_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/custom_botton.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/last_transaction_users.dart';
import 'package:adaptive_dash_board/widgets/quick_invoice_header.dart';
import 'package:adaptive_dash_board/widgets/text_field_grid_view.dart';
import 'package:flutter/material.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});
  static const items = [
    EnterYourInfoModel(
        textFileldTitle: 'Customer name',
        textFileldHintText: 'Type customer name'),
    EnterYourInfoModel(
        textFileldTitle: 'Customer Email',
        textFileldHintText: 'Type customer email'),
    EnterYourInfoModel(
      textFileldTitle: 'Item name',
      textFileldHintText: 'Type customer name',
    ),
    EnterYourInfoModel(
      textFileldTitle: 'Item mount',
      textFileldHintText: 'USD',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return CustomBackroundContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const QuickInvoiceHeader(),
        const SizedBox(
          height: 24,
        ),
        const Text(
          'Latest Transaction',
          style: Appstyles.styleRegular16,
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView(),
        const SizedBox(
          height: 24,
        ),
        const Divider(
          color: Color(0XffF1F1F1),
          thickness: 1,
        ),
        const SizedBox(
          height: 24,
        ),
        const TextFieldGridView(items: items),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: CustomBotton(
              text: 'Add more details',
              color: Colors.white,
              style: Appstyles.styleSemiBold18
                  .copyWith(color: const Color(0XFF4EB7F2)),
            )),
            const SizedBox(
              width: 24,
            ),
            const Expanded(
                child: CustomBotton(
              text: 'Send Money',
              color: Color(0XFF4EB7F2),
              style: Appstyles.styleSemiBold18,
            ))
          ],
        )
      ],
    ));
  }
}
