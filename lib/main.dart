import 'package:adaptive_dash_board/widgets/adaptive_layout.dart';
import 'package:adaptive_dash_board/views/dash_board_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ResponsiveDashBoard());
}

class ResponsiveDashBoard extends StatelessWidget {
  const ResponsiveDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashBoardView(),
    );
  }
}
