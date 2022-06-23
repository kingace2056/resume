import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:resume_website/responsive.dart';

import '../../../constraints.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
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
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white)
                      : Theme.of(context).textTheme.headline6?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.white),
                ),
                Row(
                  children: [
                    if (!Responsive.isMobileLarge(context))
                      Text(
                        'Hello I\'m ',
                        style: Theme.of(context).textTheme.subtitle1!,
                      ),
                    if (!Responsive.isMobileLarge(context))
                      if (Responsive.isDesktop(context))
                        const SizedBox(
                          height: defaultPadding / 2,
                        ),
                    if (!Responsive.isMobileLarge(context))
                      BannerAnimatedText(),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 2,
                              vertical: defaultPadding),
                          backgroundColor: flutColor),
                      child: Text(
                        'Explore',
                        style: Theme.of(context).textTheme.subtitle1!,
                      ))
              ],
            ),
          )
        ],
      ),
    );
  }
}

class BannerAnimatedText extends StatelessWidget {
  const BannerAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: AnimatedTextKit(animatedTexts: [
        TyperAnimatedText('Sarthak Parajuli'),
        TyperAnimatedText('Flutter Developer'),
        TyperAnimatedText('Web Developer'),
        TyperAnimatedText('Computer Engineer'),
      ]),
    );
  }
}
