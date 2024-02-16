import 'package:adaptive_dash_board/widgets/adaptive_layout.dart';
import 'package:adaptive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AdaptiveLayout(
            mobileLayout: (context) => const SizedBox(),
            desktopLayout: (context) => const DashBoardDesktopLayout(),
            tabletLayout: (context) => const SizedBox()));
  }
}
