import 'dart:convert';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../constraints.dart';
import 'AnimatedProgressIndicator.dart';
import 'coding.dart';
import 'knowledgeColumn.dart';
import 'sidebar_intro.dart';
import 'skills.dart';

class bodyDrawer extends StatelessWidget {
  const bodyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // backgroundColor: darkColor,
      child: Column(
        children: [
          const introSarthak(),
          Expanded(
              child: SingleChildScrollView(
            padding: const EdgeInsets.all(defaultPadding),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const addressInfo(
                  title: 'Address',
                  bText: 'Nepal',
                ),
                const addressInfo(
                  title: 'City',
                  bText: 'Nawalparasi(East)',
                ),
                const addressInfo(
                  title: 'Age',
                  bText: '23',
                ),
                //TODO : uncomment below line
                const skills(),

                const coding(),

                const KnowledgeColumn(),

                Column(
                  children: [
                    TextButton(
                        onPressed: () {
                          launchUrlString(
                              // 'https://drive.google.com/uc?id=1eLqJb2VRebb3crsiq2XDlz1WQZHjee6u&export=download'
                              //https://drive.google.com/file/d/1HPlvl3EiMzroQmDnrRScyW9JN1S7-xik/view?usp=share_link
                              'https://drive.google.com/uc?id=1HPlvl3EiMzroQmDnrRScyW9JN1S7-xik&export=download'

                              //
                              // 'https://drive.google.com/file/d/1SFoCV4wSmreQ2wn_ARs8gDPtGJ6z6wOM/view?usp=share_link'
                              );
                        },
                        child: FittedBox(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Download CV',
                                  style: Theme.of(context).textTheme.bodyText1),
                              SizedBox(
                                width: defaultPadding / 2,
                              ),
                              FaIcon(
                                FontAwesomeIcons.download,
                                color: bodyTextColor,
                                size: defaultPadding / 1.5,
                              )
                            ],
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(top: defaultPadding / 2),
                      color: socialColor,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Spacer(),
                          IconButton(
                              onPressed: () {
                                launchUrlString(
                                    'https://www.linkedin.com/in/sarthakparajuli/');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {
                                launchUrlString(
                                    'https://github.com/kingace2056');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {
                                launchUrlString(
                                    'https://www.sarthakparajuli.com.np');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.earthAsia,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {
                                launchUrlString(
                                    'https://twitter.com/sarthakace10');
                              },
                              icon: FaIcon(
                                FontAwesomeIcons.twitter,
                                color: bodyTextColor,
                              )),
                          Spacer()
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
