// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_themedemo/color.dart';

class DrawerHeaderSCIT extends StatelessWidget {
  const DrawerHeaderSCIT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: lightPurple,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SCIT PSU Surat',
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          Text(
            'Faculty of Science and Industrial Technology',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          Text(
            'Prince of Songkla University, Suratthani Campus',
            style: Theme.of(context).textTheme.bodySmall!
              .copyWith(
                color: blackGrey,
                fontFamily: 'Kanit',
                fontSize: 13
              ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}