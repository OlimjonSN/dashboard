import 'package:dashboard/style/colors.dart';
import 'package:flutter/material.dart';

import 'companents/sideMenu.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          const Expanded(flex: 1, child: sideMenu()),
          Expanded(
              flex: 15,
              child: Container(
                color: AppColors.primaryBG,
              ))
        ],
      )),
    );
  }
}
