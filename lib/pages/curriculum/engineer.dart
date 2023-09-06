import 'package:flutter/material.dart';
//import 'package:flutter_themedemo/pages/appbarmain.dart';
//import 'package:flutter_themedemo/pages/maindrawer.dart';

class Engineer extends StatelessWidget {
  const Engineer({super.key});

  @override
  Widget build(BuildContext context) {
    //final Map userData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      //drawer: MainDrawer(userData: userData),
      body: Center(
        child: Column(
          children: [
            Text(
              'Engineer',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ],
        ),
      ),
    );
  }
}