import 'package:flutter/material.dart';
import 'package:flutter_themedemo/pages/drawerHeader.dart';
import 'package:flutter_themedemo/pages/drawermenu.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          DrawerHeaderSCIT(),
          DrawerMenu(
            icon: Icons.home, 
            menuName: 'About Me', 
            route: '/news',
          ),
          DrawerMenu(
            icon: Icons.newspaper, 
            menuName: 'News', 
            route: '/mainNews',
          ),
          DrawerMenu(
            icon: Icons.school, 
            menuName: 'Curriculum', 
            route: '/news',
          ),
          DrawerMenu(
            icon: Icons.phone, 
            menuName: 'Contact us', 
            route: '/login',
          ),
        ],
      ),
    );
  }
}