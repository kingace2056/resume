import 'package:flutter/material.dart';
import 'package:resume_website/componets/AnimatedLinearProg.dart';

import '../constraints.dart';
import 'AnimatedProgressIndicator.dart';
import 'coding.dart';
import 'sidebar_intro.dart';
import 'skills.dart';

class bodyDrawer extends StatelessWidget {
  const bodyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const introSarthak(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const addressInfo(
                  title: 'Address',
                  bText: 'Nepal',
                ),
                const addressInfo(
                  title: 'City',
                  bText: 'Nawalparasi(East)',
                ),
                const addressInfo(
                  title: 'Age',
                  bText: '23',
                ),
                //TODO : uncomment below line
                const skills(),
                const SizedBox(
                  height: defaultPadding,
                ),
                const coding(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
