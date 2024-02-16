import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/widgets/activer_and_inactive_item.dart';
import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.isactive, required this.drawerItemModel});
  final DrawerItemModel drawerItemModel;
  final bool isactive;
  @override
  Widget build(BuildContext context) {
    return isactive
        ? ActiveItem(drawerItemModel: drawerItemModel)
        : InActiveItem(drawerItemModel: drawerItemModel);
  }
}
