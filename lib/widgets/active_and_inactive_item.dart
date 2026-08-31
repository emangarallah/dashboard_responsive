import 'package:dashboard/models/drawer_item.dart';
import 'package:dashboard/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InActiveDrawerItem extends StatelessWidget {
  const InActiveDrawerItem({super.key, required this.drawerItem});
  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(drawerItem.title, style: AppStyles.styleMedium16(context)),
    );
  }
}

class ActiveDrawerItem extends StatelessWidget {
  const ActiveDrawerItem({super.key, required this.drawerItem});

  final DrawerItemModel drawerItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawerItem.image),
      title: Text(drawerItem.title, style: AppStyles.styleBold16(context)),
      trailing: Container(
        width: 3.7,

        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
