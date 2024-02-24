import 'package:flutter/material.dart';
import 'package:resume_website/screens/mainScreen/components/Certifications.dart';
import 'package:resume_website/screens/mainScreen/components/flexing_proj.dart';
import 'package:resume_website/utils/device_check.dart';

import '/screens/homepage.dart';
// import 'components/Acheivement.dart';
import 'components/Banner.dart';
import 'components/MyProjects.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(children: [
      DeviceCheck.isMobile(context) ? SizedBox(height: 20) : SizedBox.shrink(),
      const BannerWidget(),
      //since no achievements yet
      // Acheivement(),
      const MyProjects(),
      const SizedBox(
        height: 10,
      ),
      const MyBadges(),
      const SizedBox(
        height: 10,
      ),
      const FlexingProject()
    ]);
  }
}
