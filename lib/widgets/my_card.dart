import 'package:adaptive_dash_board/models/transaction_history_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:adaptive_dash_board/widgets/dots_indicator.dart';
import 'package:adaptive_dash_board/widgets/my_card_page_view.dart';
import 'package:adaptive_dash_board/widgets/transaction_history_list_tile.dart';
import 'package:flutter/material.dart';

class MyCard extends StatefulWidget {
  const MyCard({super.key});

  @override
  State<MyCard> createState() => _MyCardState();
}

final List<TransactionHistoryModel> items = [
  const TransactionHistoryModel(
    title: 'Cash Withdrawal',
    subTitle: '13 Apr, 2022 ',
    amount: '\$20,129',
    amountColor: Color(0XffF3735E),
  ),
  const TransactionHistoryModel(
    title: 'Landing Page project',
    subTitle: '13 Apr, 2022 at 3:30 PM',
    amount: '\$2,000',
    amountColor: Color(0Xff7DD97B),
  ),
  const TransactionHistoryModel(
    title: 'Juni Mobile App project',
    subTitle: '13 Apr, 2022 at 3:30 PM',
    amount: '\$20,129',
    amountColor: Color(0Xff7DD97B),
  ),
];

class _MyCardState extends State<MyCard> {
  int currentindex = 0;
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController();
    pageController!.addListener(() {
      currentindex = pageController!.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 40,
      ),
      child: CustomBackroundContainer(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'My Card',
            style: Appstyles.styleSemiBold20,
          ),
          const SizedBox(
            height: 20,
          ),
          MyCardPageView(
            pageController: pageController!,
          ),
          const SizedBox(
            height: 19,
          ),
          DotsIndicator(
            currentIndex: currentindex,
          ),
          const Divider(
            height: 40,
            color: Color(0XFFF1F1F1),
          ),
          ListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text(
              'Transaction History',
              style: Appstyles.styleSemiBold20,
            ),
            trailing: Text(
              'see all',
              style: Appstyles.styleRegular16
                  .copyWith(color: const Color(0Xff4EB7F2)),
            ),
          ),
          Text(
            '13 April 2022',
            style: Appstyles.styleRegular16.copyWith(
              color: const Color(0XFFAAAAAA),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 12),
                  child: TransactionHistoryListTile(
                      transactionHistoryModel: items[index]),
                );
              })
        ],
      )),
    );
  }
}
