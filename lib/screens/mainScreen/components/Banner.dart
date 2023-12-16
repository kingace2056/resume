import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_website/responsive.dart';
import 'package:resume_website/widgets/size_config.dart';
import 'package:resume_website/widgets/textscale.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../constraints.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: TrueSize.getHeight(context, 100)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: TrueSize.getWidth(context, 231) / 2,
                backgroundImage: const NetworkImage(profileAvatar),
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 20 / 1920),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Hi! It’s me Sarthak Parajuli',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: TrueSize.getWidth(context, 74))),
                    Text('Flutter Developer',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: TrueSize.getWidth(context, 24))),
                    Row(
                      children: [
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: TrueSize.getWidth(context, 31),
                        ),
                        SizedBox(
                          width: TrueSize.getWidth(context, 10),
                        ),
                        Text(' Devchuli, Gandaki, Nepal',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: TrueSize.getWidth(context, 24)))
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
          SizedBox(
            height: TrueSize.getHeight(context, 50),
          ),
          const Row(
            children: [
              SizedBox(
                width: 5,
              ),
              SocialsWidget(
                  color: gitHubColor,
                  icon: Icon(FontAwesomeIcons.github),
                  name: 'GitHub',
                  url: githubLink),
              SocialsWidget(
                  color: linkedInColor,
                  icon: Icon(
                    FontAwesomeIcons.linkedin,
                    color: Colors.white,
                  ),
                  name: 'LinkedIn',
                  url: 'https://www.linkedin.com/in/sarthakparajuli/'),
              SocialsWidget(
                  color: Color(0xFF9606CA),
                  icon: Icon(
                    FontAwesomeIcons.googlePlus,
                    color: Colors.white,
                  ),
                  name: 'Gmail',
                  url: 'mailto:sarthak123parajuli@gmail.com'),
            ],
          )
        ],
      ),
    );
  }
}

class SocialsWidget extends StatelessWidget {
  const SocialsWidget({
    super.key,
    required this.name,
    required this.url,
    required this.icon,
    required this.color,
  });
  final String name;
  final String url;
  final Widget icon;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrlString(url);
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: TrueSize.getWidth(context, 18)),
        padding: EdgeInsets.all(TrueSize.getWidth(context, 13)),
        decoration: BoxDecoration(
            color: color,
            boxShadow: [
              BoxShadow(
                  color: Colors.white.withOpacity(0.25),
                  blurRadius: TrueSize.getWidth(context, 8))
            ],
            borderRadius: BorderRadius.circular(
              TrueSize.getWidth(context, 15),
            )),
        child: Row(
          children: [
            icon,
            SizedBox(
              width: TrueSize.getWidth(context, 10),
            ),
            Text(name,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: TrueSize.getWidth(context, 23)))
          ],
        ),
      ),
    );
  }
}
