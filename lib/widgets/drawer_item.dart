import 'package:dashboard/widgets/active_and_inactive_item.dart';
import 'package:flutter/material.dart';

import '../models/drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItem,
    required this.isActive,
  });

  final DrawerItemModel drawerItem;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawerItem(drawerItem: drawerItem)
        : InActiveDrawerItem(drawerItem: drawerItem);
  }
}
