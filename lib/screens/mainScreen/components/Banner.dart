import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:resume_website/componets/skills.dart';
import 'package:resume_website/utils/device_check.dart';
import 'package:resume_website/widgets/size_config.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../../constraints.dart';

class BannerWidget extends StatefulWidget {
  const BannerWidget({
    super.key,
  });

  @override
  State<BannerWidget> createState() => _BannerWidgetState();
}

class _BannerWidgetState extends State<BannerWidget>
    with TickerProviderStateMixin {
  late Animation _animation;
  late AnimationController _animationController;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    // TODO: implement initState
    _animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animationController.repeat(reverse: true);
    _colorAnimation = ColorTween(begin: Colors.pink, end: Colors.blue)
        .animate(_animationController);

    _animation = Tween(begin: 2.0, end: 15.0).animate(_animationController)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(shape: BoxShape.circle, boxShadow: [
                BoxShadow(
                    color: _colorAnimation.value!.withOpacity(0.5),
                    blurRadius: _animation.value / 2,
                    spreadRadius: _animation.value / 2),
              ]),
              child: CircleAvatar(
                radius: TrueSize.getWidth(context, 231) / 2,
                backgroundImage: const NetworkImage(profileAvatar),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 20 / 1920),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AutoSizeText('Hi! It’s me Sarthak Parajuli',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: TrueSize.getWidth(context, 74)))
                      .animate()
                      .fade()
                      .slideY(
                        begin: -100,
                        end: 0,
                      ),
                  AutoSizeText(
                    'Flutter Developer',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: TrueSize.getWidth(context, 24)),
                  ),
                  Row(
                    children: [
                      Icon(
                        FontAwesomeIcons.locationArrow,
                        size: DeviceCheck.isMobile(context)
                            ? Theme.of(context).textTheme.bodyMedium!.fontSize
                            : TrueSize.getWidth(context, 24),
                      ),
                      SizedBox(
                        width: TrueSize.getWidth(context, 10),
                      ),
                      AutoSizeText(' Devchuli, Gandaki, Nepal',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: TrueSize.getWidth(context, 24))),
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
              color: gitHubColor,
              name: ' Medium',
              icon: Icon(
                FontAwesomeIcons.medium,
                color: Colors.white,
              ),
              url: 'https://sarthaknp.medium.com/',
            ),
            SocialsWidget(
                color: Color(0xFF9606CA),
                icon: Icon(
                  FontAwesomeIcons.googlePlus,
                  color: Colors.white,
                ),
                name: 'Gmail',
                url: 'mailto:sarthak123parajuli@gmail.com'),
          ],
        ),
        SizedBox(
          height: TrueSize.getHeight(context, 50),
        ),
        const skills(),
      ],
    );
  }
}

class SocialsWidget extends StatefulWidget {
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
  State<SocialsWidget> createState() => _SocialsWidgetState();
}

class _SocialsWidgetState extends State<SocialsWidget> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        launchUrlString(widget.url);
      },
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            isHover = true;
          });
        },
        onExit: (event) {
          setState(() {
            isHover = false;
          });
        },
        child: Container(
          // width: DeviceCheck.isMobile(context)
          //     ? MediaQuery.of(context).size.width * 0.2
          //     : null,
          margin:
              EdgeInsets.symmetric(horizontal: TrueSize.getWidth(context, 18)),
          padding: EdgeInsets.all(TrueSize.getWidth(context, 13)),
          decoration: BoxDecoration(
            color: widget.color,
            boxShadow: [
              BoxShadow(
                  color: Colors.pink,
                  offset: !isHover ? const Offset(2, 0) : const Offset(-3, -1),
                  blurRadius: isHover ? 8 : 3),
              BoxShadow(
                color: Colors.blue,
                offset: !isHover ? const Offset(2, 0) : const Offset(3, 1),
                // blurRadius: controller.hovers[index] ? 20 : 10,
                blurRadius: isHover ? 8 : 3,
              ),
            ],
            borderRadius: DeviceCheck.isMobile(context)
                ? BorderRadius.circular(10)
                : BorderRadius.circular(TrueSize.getWidth(context, 20)),
          ),
          child: Row(
            children: [
              widget.icon,
              SizedBox(
                width: TrueSize.getWidth(context, 10),
              ),
              AutoSizeText(widget.name,
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: TrueSize.getWidth(
                          context, DeviceCheck.isMobile(context) ? 18 : 23)))
            ],
          ),
        ),
      ),
    );
  }
}
