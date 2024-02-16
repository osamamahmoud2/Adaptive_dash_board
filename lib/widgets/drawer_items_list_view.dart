import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

int activeindex = 0;
final List<DrawerItemModel> items = [
  DrawerItemModel(title: 'Dashboard', image: Assets.imagesDashBoard),
  DrawerItemModel(title: 'My Transaction', image: Assets.imagesMyTransaction),
  DrawerItemModel(title: 'Statistics', image: Assets.imagesStatistics),
  DrawerItemModel(title: 'Wallet Account', image: Assets.imagesWallet),
  DrawerItemModel(title: 'My Investments', image: Assets.imagesMyInvestment),
];

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    activeindex = index;
                  });
                },
                child: DrawerItem(
                  drawerItemModel: items[index],
                  isactive: activeindex == index,
                )),
          );
        }));
  }
}
