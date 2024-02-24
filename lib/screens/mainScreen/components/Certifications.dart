// ignore: file_names
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:resume_website/models/badges.dart';
import 'package:resume_website/responsive.dart';
import 'package:resume_website/utils/device_check.dart';
import 'package:resume_website/widgets/card_cutout.dart';
import 'package:resume_website/widgets/size_config.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher_string.dart';
import '/constraints.dart';

class MyBadges extends StatelessWidget {
  const MyBadges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AutoSizeText(
            'Badge Showcase',
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          const Responsive(
              mobile: BadgeGridview(
                crossAxisCount: 1,
                childAspectRatio: 387.81 / 420,
              ),
              mobileLarge: BadgeGridview(
                crossAxisCount: 2,
                // childAspectRatio: 1.6,
                childAspectRatio: 387.81 / 420,
              ),
              desktop: BadgeGridview(
                childAspectRatio: 387.81 / 420,
                crossAxisCount: 4,
              ),
              tablet: BadgeGridview(
                childAspectRatio: 387.81 / 420,
                crossAxisCount: 3,
              ))
        ],
      ),
    );
  }
}

class BadgeGridview extends StatelessWidget {
  const BadgeGridview({
    Key? key,
    this.crossAxisCount = 4,
    this.childAspectRatio = 387 / 420,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: myBadges.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount,
            childAspectRatio: childAspectRatio,
            crossAxisSpacing: TrueSize.getWidth(context, 50),
            mainAxisSpacing: TrueSize.getWidth(context, 50)),
        itemBuilder: (context, index) => BadgeCard(badge: myBadges[index]));
  }
}

class BadgeCard extends StatelessWidget {
  const BadgeCard({
    super.key,
    required this.badge,
  });

  final Badges badge;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 387 / 420,
      child: Container(
        margin: DeviceCheck.isMobile(context)
            ? const EdgeInsets.symmetric(horizontal: 20)
            : null,
        decoration: BoxDecoration(
          color: cardColor,
          borderRadius: BorderRadius.circular(31),
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.14),
              offset: Offset.zero,
              blurRadius: 10,
              spreadRadius: 0.5,
            )
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  launchUrl(Uri.parse(badge.link!));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Flexible(
                      child: Text(
                        badge.title!,
                        maxLines: 5,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .fontSize,
                            fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                        // maxLines: 2,
                      ),
                    ),
                    Container(
                      height: TrueSize.getHeight(context, 140),
                      width: TrueSize.getHeight(context, 140),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: badge.title ==
                                  "Flutter Advanced Course - Clean Architecture With MVVM™"
                              ? Image.asset(udemyImage).image
                              : NetworkImage(badge.image!),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Expanded(
                child: SingleChildScrollView(
                  child: AutoSizeText(
                    badge.description!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize:
                          Theme.of(context).textTheme.bodyMedium!.fontSize,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
