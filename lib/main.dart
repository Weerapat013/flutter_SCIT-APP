import 'package:flutter/material.dart';
import 'package:flutter_themedemo/pages/curriculum.dart';
import 'package:flutter_themedemo/pages/hello.dart';
import 'package:flutter_themedemo/pages/home.dart';
import 'package:flutter_themedemo/pages/login.dart';
import 'package:flutter_themedemo/pages/mainnews.dart';
import 'package:flutter_themedemo/pages/register.dart';
import 'package:flutter_themedemo/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: scitTheme(),
      initialRoute: '/curriculum',
      routes: {
        '/hello': (context) => const Hello(),
        '/register': (context) => const Register(),
        '/login':(context) => const Login(),
        '/news':(context) => const Home(),
        '/mainNews':(context) => const MainNews(),
        '/curriculum':(context) => const Curriculum(),
      },
    );
  }
}