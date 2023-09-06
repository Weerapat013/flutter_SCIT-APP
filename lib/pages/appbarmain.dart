import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';

class AppBarMain extends StatefulWidget implements PreferredSizeWidget {
  const AppBarMain({
    super.key,
  });

  @override
  State<AppBarMain> createState() => _AppBarMainState();

  @override
  Size get preferredSize => const Size.fromHeight(55);
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      elevation: 0,
      leading: Builder(
        builder: (context) => IconButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          icon: const Icon(
            Icons.menu,
            size: 38,
            color: purplePrimary,
          ),
          tooltip: 'Open Menu',
        ),
      ),
      titleTextStyle: Theme.of(context).textTheme.headlineSmall,
      centerTitle: false,
      title: const Text(
        // 'Home : ${userData["user"]}',
        'Home',
        style: TextStyle(color: purplePrimary),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10.0),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              size: 38,
              color: purplePrimary,
            ),
            tooltip: 'Open Menu',
          ),
        ),
      ],
    );
  }
}