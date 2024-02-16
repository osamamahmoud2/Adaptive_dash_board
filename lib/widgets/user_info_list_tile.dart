import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile(
      {super.key, required this.title, required this.subTitle});
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0XFFFAFAFA),
      child: ListTile(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        title: Text(title, style: Appstyles.styleSemiBold16),
        subtitle: Text(subTitle, style: Appstyles.styleRegular12),
        leading: SvgPicture.asset(Assets.imagesAvater3),
      ),
    );
  }
}
