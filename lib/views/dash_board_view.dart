import 'package:adaptive_dash_board/widgets/adaptive_layout.dart';
import 'package:adaptive_dash_board/widgets/dash_board_desktop_layout.dart';
import 'package:adaptive_dash_board/widgets/my_card.dart';
import 'package:flutter/material.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0XffF7F9FA),
        body: AdaptiveLayout(
            mobileLayout: (context) => const MyCard(),
            desktopLayout: (context) => const DashBoardDesktopLayout(),
            tabletLayout: (context) => const SizedBox()));
  }
}
