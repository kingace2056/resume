import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import '../componets/sidebar.dart';
import '../constraints.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.children,
  }) : super(key: key);
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxHeight: maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: bodyDrawer()),
              Expanded(
                  flex: 7,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [...children],
                    ),
                  ))
            ],
          ),
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
            AnimatedTextKit(animatedTexts: [
              TyperAnimatedText('Made with ❤️ using Flutter 3',
                  speed: Duration(milliseconds: 50),
                  textStyle: Theme.of(context).textTheme.subtitle1),
            ]),
          ],
        ),
      ),
    );
  }
}
