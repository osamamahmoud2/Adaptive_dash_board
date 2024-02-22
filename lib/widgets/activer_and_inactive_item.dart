
import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(drawerItemModel.title, style: Appstyles.styleSemiBold16(context: context)),
    );
  }
}

class ActiveItem extends StatelessWidget {
  const ActiveItem({
    super.key,
    required this.drawerItemModel,
  });

  final DrawerItemModel drawerItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
      ),
      title: Text(drawerItemModel.title, style: Appstyles.styleBold16(context: context)),
      trailing: Container(
        width: 3.27,
        color: const Color(0Xff4EB7F2),
      ),
    );
  }
}
