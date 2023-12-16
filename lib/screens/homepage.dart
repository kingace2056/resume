import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume_website/responsive.dart';
import 'package:resume_website/widgets/size_config.dart';

import 'package:resume_website/constraints.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: Responsive.isDesktop(context)
      //     ? null
      //     : AppBar(
      //         backgroundColor: bgColor,
      //         leading: Builder(
      //           builder: (context) => IconButton(
      //               onPressed: () {
      //                 Scaffold.of(context).openDrawer();
      //               },
      //               icon: const Icon(Icons.menu)),
      //         )),
      // // drawer: const bodyDrawer(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TrueSize.getWidth(context, 20)),
        child: Column(
          children: [...children],
        ),
      ),
      bottomNavigationBar: Container(
        height: 30,
        width: MediaQuery.of(context).size.width,
        color: bgInfoTop,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DefaultTextStyle(
              style: !Responsive.isMobile(context)
                  ? Theme.of(context).textTheme.subtitle1!
                  : TextStyle(color: Colors.white),
              child: AnimatedTextKit(animatedTexts: [
                TyperAnimatedText(
                  'Made with ❤️ using Flutter 3',
                  speed: const Duration(milliseconds: 50),
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
