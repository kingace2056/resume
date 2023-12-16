import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_website/widgets/size_config.dart';

import '../constraints.dart';
import 'AnimatedProgressIndicator.dart';

class skills extends StatelessWidget {
  const skills({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Skills",
            style: TextStyle(
              color: Colors.white,
              fontSize: TrueSize.getWidth(context, 40),
              fontWeight: FontWeight.w500,
            )),
        Row(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            AnimatedProgressIndicator(
              barColor: flutColor,
              percent: 0.85,
              label: "Flutter",
              image: Image.asset(
                'images/flutter.png',
                fit: BoxFit.fitHeight,
                isAntiAlias: true,
                height: TrueSize.getWidth(context, 100),
                width: TrueSize.getWidth(context, 100),
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            AnimatedProgressIndicator(
              barColor: dartColor,
              percent: 0.85,
              label: "Dart",
              image: Image.asset(
                'images/dart.png',
                fit: BoxFit.fitHeight,
                isAntiAlias: true,
                height: TrueSize.getWidth(context, 100),
                width: TrueSize.getWidth(context, 100),
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            AnimatedProgressIndicator(
              barColor: jsColor,
              percent: 0.6,
              label: "javascript",
              image: Image.asset(
                'images/js.png',
                fit: BoxFit.fitHeight,
                isAntiAlias: true,
                height: TrueSize.getWidth(context, 100),
                width: TrueSize.getWidth(context, 100),
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            AnimatedProgressIndicator(
              barColor: htmlColor,
              percent: 0.6,
              label: "HTML",
              image: Image.asset(
                'images/html.png',
                fit: BoxFit.fitHeight,
                isAntiAlias: true,
                height: TrueSize.getWidth(context, 100),
                width: TrueSize.getWidth(context, 100),
              ),
            ),
            const SizedBox(
              width: defaultPadding / 2,
            ),
            AnimatedProgressIndicator(
              barColor: cssColor,
              percent: 0.6,
              label: "CSS",
              image: Image.asset(
                '/images/css.png',
                fit: BoxFit.fitHeight,
                isAntiAlias: true,
                height: TrueSize.getWidth(context, 100),
                width: TrueSize.getWidth(context, 100),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
