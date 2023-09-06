import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';
import 'package:flutter_themedemo/pages/appbarmain.dart';
import 'package:flutter_themedemo/pages/maindrawer.dart';

class MainNews extends StatefulWidget {
  const MainNews({super.key});

  @override
  State<MainNews> createState() => _MainNewsState();
}

class _MainNewsState extends State<MainNews> {
  @override
  Widget build(BuildContext context) {
    final Map userData = ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      backgroundColor: whitePure,
      appBar: AppBarMain(userData: userData),
      drawer: MainDrawer(userData: userData),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data : ${userData["user"]}'),
          ],
        ),
      ),
    );
  }
}