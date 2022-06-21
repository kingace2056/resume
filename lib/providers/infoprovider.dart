import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class InfoProvider extends ChangeNotifier {
  String image = 'https://avatars.githubusercontent.com/u/46929074?v=4';
  String name = "Sarthak Parajuli";
  String email = "sarthak123parajuli@gmail.com";
  String phone = "+977-9868243838";
  String address = "Nawalparasi(East), Nepal";
  String education = "Bachelor of Engineering - Computer ";
  DateTime dob = DateTime(1999, 5, 30);
  String dobString = "30 May 1999";
  Map<String, double> skills = {
    "Flutter": 4 / 5,
    "Dart": 4 / 5,
    "HTML": 5 / 5,
    "CSS": 4 / 5,
    "Python": 2 / 5,
    "JavaScript": 3 / 5,
    "C++": 2 / 5,
    "C": 3 / 5,
  };

  Map<String, String> links = {
    'Github': 'https://github.com/kingace2056',
    'LinkedIn': '',
    'Website': 'https://www.sarthakparajuli.com.np',
  };
}
