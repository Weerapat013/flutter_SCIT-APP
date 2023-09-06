import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_themedemo/pages/register.dart';

class Hello extends StatefulWidget {
  const Hello({super.key});

  @override
  State<Hello> createState() => _HelloState();
}

class _HelloState extends State<Hello> {
  @override
  void initState() {
    super.initState();

    Timer(
      const Duration(seconds: 3),
      () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Register())
            )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/logo.png'),

            const SizedBox(height: 20,),

            Text('SCIT PSU Surat',
              style: Theme.of(context).textTheme.headlineLarge,
            ),

            const SizedBox(height: 20,),

            Text('Prince of Songkla University',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 5,),

            Text('Suratthani Campus',
              style: Theme.of(context).textTheme.bodyLarge,
            ),

            const SizedBox(height: 20,),

            Text(' "SCIT, We drive your future" ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}