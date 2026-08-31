import 'package:dashboard/widgets/all_expensess.dart';
import 'package:dashboard/widgets/custom_drawer.dart';
import 'package:flutter/material.dart';

class DashboardDesktop extends StatelessWidget {
  const DashboardDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),

        Expanded(
          flex: 2,
          child: Column(children: [Expanded(child: AllExpensess())]),
        ),
      ],
    );
  }
}
