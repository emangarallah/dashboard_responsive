import 'package:dashboard/models/drawer_item.dart';
import 'package:dashboard/widgets/active_and_inactive_item.dart';
import 'package:dashboard/widgets/custom_drawer_items.dart';
import 'package:dashboard/widgets/user_info_list.dart';
import 'package:flutter/material.dart';

import '../utils/app_images.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoList(
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
              image: Assets.imagesAvatar3,
            ),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 8)),

          const CustomDrawerItemm(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),

                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                    title: 'Settings system',
                    image: Assets.imagesSettings,
                  ),
                ),

                InActiveDrawerItem(
                  drawerItem: DrawerItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),

                const SizedBox(height: 48),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
