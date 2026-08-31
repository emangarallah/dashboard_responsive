import 'package:dashboard/widgets/dashboard_desktop.dart';
import 'package:flutter/material.dart';

import '../widgets/adaptive_layout_widget.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (BuildContext context) => const SizedBox(),
        tabletLayout: (BuildContext context) => const SizedBox(),
        desktopLayout: (BuildContext context) => const DashboardDesktop(),
      ),
    );
  }
}
