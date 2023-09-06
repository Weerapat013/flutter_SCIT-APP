import 'package:flutter/material.dart';
import 'package:flutter_themedemo/pages/drawerHeader.dart';
import 'package:flutter_themedemo/pages/drawermenu.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
    required this.userData,
  });

  final Map userData;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeaderSCIT(),
          DrawerMenu(
            icon: Icons.home, 
            menuName: 'About Me', 
            route: '/news',
            data: userData,
          ),
          DrawerMenu(
            icon: Icons.newspaper, 
            menuName: 'News', 
            route: '/mainNews',
            data: userData,
          ),
          DrawerMenu(
            icon: Icons.school, 
            menuName: 'Curriculum', 
            route: '/curriculum',
            data: userData,
          ),
          DrawerMenu(
            icon: Icons.phone, 
            menuName: 'Contact us', 
            route: '/login',
            data: userData,
          ),
        ],
      ),
    );
  }
}