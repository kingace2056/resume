import 'package:flutter/material.dart';

import '/screens/homepage.dart';
import 'components/Acheivement.dart';
import 'components/Banner.dart';
import 'components/MyProjects.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const HomePage(children: [
      BannerWidget(),
      //since no achievements yet
      // Acheivement(),
      MyProjects(),
    ]);
  }
}
