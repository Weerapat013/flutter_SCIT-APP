import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';
import 'package:flutter_themedemo/pages/curriculum/chemistry.dart';
import 'package:flutter_themedemo/pages/curriculum/engineer.dart';
import 'package:flutter_themedemo/pages/curriculum/it.dart';

class Curriculum extends StatelessWidget {
  const Curriculum({super.key});

  @override
  Widget build(BuildContext context) {
    //final Map userData = ModalRoute.of(context)!.settings.arguments as Map;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('curriculum'),
          // bottom: const TabBar(
          //   indicatorWeight: 5,
          //   indicatorColor: yellowSecondary,
          //   tabs: [
          //     Tab(text: 'IT', icon: Icon(Icons.computer)),
          //     Tab(text: 'Engineer', icon: Icon(Icons.engineering)),
          //     Tab(text: 'Chemistry', icon: Icon(Icons.science)),
          //   ],
          // ),
        ),
        //drawer: MainDrawer(userData: userData),
        body: const TabBarView(
          children: [
            IT(),
            Engineer(),
            Chemistry(),
          ],
        ),
        bottomNavigationBar: const SafeArea(
          child: Material(
            color: purplePrimary,
            child: TabBar(
              padding: EdgeInsets.only(top: 10),
              indicatorWeight: 5,
              indicatorColor: yellowSecondary,
              labelColor: whitePerl,
              tabs: [
                Tab(text: 'IT', icon: Icon(Icons.computer)),
                Tab(text: 'Engineer', icon: Icon(Icons.engineering)),
                Tab(text: 'Chemistry', icon: Icon(Icons.science)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}