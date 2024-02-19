import 'package:adaptive_dash_board/utils/styles/app_styles.dart';
import 'package:adaptive_dash_board/widgets/cutsom_back_ground_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackroundContainer(
        child: Column(
      children: [
        Text(
          'My Card',
          style: Appstyles.styleSemiBold20,
        ),
      ],
    ));
  }
}
