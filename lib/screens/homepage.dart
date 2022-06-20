import 'package:flutter/material.dart';
import 'package:resume_website/constraints.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  color: leftPanColor,
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 0.2,
                        width: MediaQuery.of(context).size.width * 0.2,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              MediaQuery.of(context).size.height,
                            ),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://avatars.githubusercontent.com/u/46929074?v=4',
                              ),
                            )),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.3,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'INFO',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              const Divider(
                                height: 10,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              infoText(
                                  'Location',
                                  'Nawalparasi(East), Gandaki Province, Nepal',
                                  ''),
                              infoText('Phone', '+977 9868243838',
                                  'tel:+9779868243838'),
                              infoText('Email', 'sarthak123parajuli@gmail.com',
                                  'sarthak123parajuli@gmail.com'),
                              SizedBox(
                                height: 30,
                              ),
                              const Text(
                                'Links',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 30),
                              ),
                              const Divider(
                                height: 10,
                                thickness: 2,
                                indent: 0,
                                endIndent: 0,
                                color: Colors.black,
                              ),
                              linkText('LinkedIn', ''),
                              linkText('Website',
                                  'https://www.sarthakparajuli.com.np'),
                              linkText(
                                  'Github', 'https://github.com/kingace2056'),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  InkWell infoText(String itTitle, String itValue, String itUrl) {
    return InkWell(
      onTap: () {
        launchUrlString(itUrl);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itTitle,
            style: TextStyle(
                color: tmain, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Text(
            itValue,
            style: TextStyle(color: tsub),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  InkWell linkText(String lnTitle, String lnUrl) {
    return InkWell(
      onTap: () {
        launchUrlString(lnUrl);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            lnTitle,
            style: TextStyle(
                //underlined text
                decoration: TextDecoration.underline,
                color: tsub,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
