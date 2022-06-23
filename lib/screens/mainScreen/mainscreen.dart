import 'package:flutter/material.dart';
import 'package:resume_website/constraints.dart';
import 'package:resume_website/screens/homepage.dart';
import 'components/Acheivement.dart';
import 'components/Banner.dart';
import '/models/project.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(children: [
      const BannerWidget(),
      const Acheivement(),
      Text(
        'Project Showcase',
        style: Theme.of(context).textTheme.headline6,
      ),
      GridView.builder(
          itemCount: 10,
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => Container(
                padding: EdgeInsets.all(defaultPadding),
                color: secondaryColor,
              ))
    ]);
  }
}
