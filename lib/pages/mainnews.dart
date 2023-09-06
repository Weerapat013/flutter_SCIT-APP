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
    return const Scaffold(
      backgroundColor: whitePure,
      appBar: AppBarMain(),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('data'),
          ],
        ),
      ),
    );
  }
}