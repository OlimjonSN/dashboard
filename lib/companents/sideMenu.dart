import 'package:dashboard/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class sideMenu extends StatefulWidget {
  const sideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<sideMenu> createState() => _sideMenuState();
}

class _sideMenuState extends State<sideMenu> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedIconTheme: const IconThemeData(color: Colors.black),
      selectedIndex: _selectedIndex,
      onDestinationSelected: (index) {
        setState(() {
          _selectedIndex = index;
        });
      },
      leading: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(
                'http://images5.fanpop.com/image/photos/27500000/Happy-Aang-avatar-the-last-airbender-27589280-640-480.jpg')),
      ),
      destinations: [
        NavigationRailDestination(
            padding: const EdgeInsets.all(10),
            icon: SvgPicture.asset(
              'assets/home.svg',
              color: AppColors.iconGray,
            ),
            label: const Text("home")),
        NavigationRailDestination(
            padding: const EdgeInsets.all(10),
            icon: SvgPicture.asset(
              'assets/education.svg',
              color: AppColors.iconGray,
            ),
            label: const Text("education")),
        NavigationRailDestination(
            padding: const EdgeInsets.all(10),
            icon: SvgPicture.asset(
              'assets/network.svg',
              color: AppColors.iconGray,
            ),
            label: const Text("network")),
        NavigationRailDestination(
            padding: const EdgeInsets.all(10),
            icon: SvgPicture.asset(
              'assets/discusion.svg',
              color: AppColors.iconGray,
            ),
            label: const Text("discusion")),
      ],
    );
  }
}
