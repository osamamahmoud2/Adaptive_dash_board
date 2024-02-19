import 'package:adaptive_dash_board/models/drawer_model.dart';
import 'package:adaptive_dash_board/models/user_info_model.dart';
import 'package:adaptive_dash_board/utils/styles/app_images.dart';
import 'package:adaptive_dash_board/widgets/activer_and_inactive_item.dart';
import 'package:adaptive_dash_board/widgets/drawer_items_list_view.dart';
import 'package:adaptive_dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: UserInfoListTile(
                userInfoModel: UserInfoModel(
                    title: 'Lekan Okeowo',
                    subTitle: 'demo@gmail.com',
                    iamge: Assets.imagesAvater3),
              ),
            ),
          ),
          const SliverToBoxAdapter(child: DrawerItemsListView()),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                const Expanded(child: SizedBox(height: 20)),
                InActiveItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Setting system', image: Assets.imagesSetting),
                ),
                InActiveItem(
                  drawerItemModel: DrawerItemModel(
                      title: 'Logout account', image: Assets.imagesLogout),
                ),
                const SizedBox(
                  height: 48,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
