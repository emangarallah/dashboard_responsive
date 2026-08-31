import 'package:dashboard/models/drawer_item.dart';
import 'package:dashboard/utils/app_images.dart';
import 'package:dashboard/widgets/drawer_item.dart';
import 'package:flutter/material.dart';

class CustomDrawerItemm extends StatefulWidget {
  const CustomDrawerItemm({super.key});

  @override
  State<CustomDrawerItemm> createState() => _CustomDrawerItemmState();
}

class _CustomDrawerItemmState extends State<CustomDrawerItemm> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    const DrawerItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    const DrawerItemModel(
      title: 'Statistics',
      image: Assets.imagesWalletAccount,
    ),
    const DrawerItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            setState(() {
              activeIndex = index;
            });
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItem: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
