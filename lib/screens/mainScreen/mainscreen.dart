import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume_website/constraints.dart';
import 'package:resume_website/screens/homepage.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomePage(childrens: [
      AspectRatio(
        aspectRatio: 3,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image(
              image: NetworkImage(bannerImage),
              fit: BoxFit.cover,
            ),
            Container(
              color: darkColor.withOpacity(0.66),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome To The world Of \nSarthak !',
                    textAlign: TextAlign.start,
                    style: Theme.of(context).textTheme.headline3?.copyWith(
                        fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  Row(
                    children: [
                      Text('Hello I\'m '),
                      AnimatedTextKit(animatedTexts: [
                        TyperAnimatedText('Sarthak Parajuli'),
                        TyperAnimatedText('Flutter Developer'),
                        TyperAnimatedText('Web Developer'),
                        TyperAnimatedText('Computer Engineer'),
                      ]),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    ]);
  }
}
