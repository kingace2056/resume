import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                        onPressed: () {},
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
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.linkedin,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.github,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {},
                              icon: FaIcon(
                                FontAwesomeIcons.earthAsia,
                                color: bodyTextColor,
                              )),
                          IconButton(
                              onPressed: () {},
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
