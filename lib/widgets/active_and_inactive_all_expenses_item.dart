import 'package:adaptive_dash_board/models/all_expenses_item_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem(
      {super.key, required this.allExpenesesItemModel});
  final AllExpenesesItemModel allExpenesesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0XFFF1F1F1),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0XffFAFAFA),
                  radius: 30,
                  child: SvgPicture.asset(
                    allExpenesesItemModel.icon,
                    color: const Color(0Xff4EB7F2), //DOTO:
                  ),
                ),
                const Icon(Icons.arrow_forward_ios)
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpenesesItemModel.title,
              style: Appstyles.styleSemiBold16,
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpenesesItemModel.date,
              style: Appstyles.styleRegular14,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allExpenesesItemModel.price,
              style: Appstyles.styleSemiBold24,
            ),
          ],
        ));
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({super.key, required this.allExpenesesItemModel});
  final AllExpenesesItemModel allExpenesesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(20),
        decoration: ShapeDecoration(
          color: const Color(0XFF4EB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
            side: const BorderSide(
              width: 1,
              color: Color(0XFFF1F1F1),
            ),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0XffFFFFFF).withOpacity(0.1),
                  radius: 30,
                  child: SvgPicture.asset(
                    allExpenesesItemModel.icon,
                    color: const Color(0XffFFFFFF), //DOTO:
                  ),
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpenesesItemModel.title,
              style: Appstyles.styleSemiBold16.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 34,
            ),
            Text(
              allExpenesesItemModel.date,
              style: Appstyles.styleRegular14.copyWith(color: Colors.white),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              allExpenesesItemModel.price,
              style: Appstyles.styleSemiBold24.copyWith(color: Colors.white),
            ),
          ],
        ));
  }
}