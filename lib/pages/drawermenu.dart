import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';

class DrawerMenu extends StatelessWidget {
  final IconData icon;
  final String menuName;
  final String route;
  final Map data;
  
  const DrawerMenu({
    super.key, 
    required this.icon, 
    required this.menuName, 
    required this.route,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon, 
        color: purplePrimary, 
        size: 30,
      ),
      title: Text(
        menuName,
        style: Theme.of(context).textTheme.bodyLarge!
          .copyWith(
            fontSize: 24,
          ),
      ),
      onTap: () {
        Navigator.pushNamed(
          context, 
          route,
          arguments: data,
        );
      },
    );
  }
}