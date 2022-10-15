import 'package:resume_website/constraints.dart';

class Project {
  final String? title, description, repo, live;
  Map<String, String>? lang;

  Project({this.title, this.description, this.repo, this.live, this.lang});
}

List<Project> myProjects = [
  Project(
      live:
          'https://play.google.com/store/apps/details?id=com.acestudios.AceWall',
      title: 'AceWall',
      description: 'AceWall is an wallpaper app made using Flutter. It utilizes the power of Pexel to deliver millions of Wallpapers',
      lang: {'Flutter': flutterImg, 'Dart': dartImg}),
  Project(
      live: 'https://aceshop.pages.dev',
      title: 'AceShop',
      lang: {'Flutter': flutterImg, 'Dart': dartImg, 'Node': nodeImg},
      repo: 'https://github.com/kingace2056/AceShop',
      description:
          'AceShop is an Ecommerce App developed using Flutter with Node Backend. It is still under construction. If you are to check use Email: acestudios@gmail.com for user and admin@gmail.com for admin. Password: aceshop'),
  Project(
      live: 'https://etherwall.netlify.app',
      repo: 'https://github.com/kingace2056/etherwall',
      title: 'EtherWall',
      description:
          'EtherWall is an concept Crypto app UI  made using Flutter. It is under construction , Many more to improve',
      lang: {'Flutter': flutterImg, 'Dart': dartImg}),
  Project(
      live:
          'https://play.google.com/store/apps/details?id=com.acestudios.driving_lisence',
      title: 'Driving Lisence Nepal',
      description: 'Driving Lisence Nepal is an App for the preparation of Driving lisence exam in Nepal. It includes Model Questions , General Quiz , Color-Vision Test etc. It is live on playstore',
      lang: {'Flutter': flutterImg, 'Dart': dartImg, 'NodeJs': nodeImg}),
  Project(
      repo: 'https://github.com/kingace2056/algovis',
      live: 'https://p5-sort.netlify.app/',
      title: 'Algovis',
      description:
          'AlgoVis: Algorithms visualized using React and P5.js . This is a project done by our group \'SASS\' as a fulfilment for Minor Project in our Bachelor of Engineering - Computer. It is the project to visualize different algorithms. Go through live link and explore it',
      lang: {
        'ReactJs': reactImg,
        'P5.js': pfiveImg,
      }),
  Project(
      repo: 'https://github.com/kingace2056/MajorProject-IDS',
      title: 'Intrusion Detection System',
      description:
          'Realtime Network Intrusion Detection Using RandomForest . This is a project done by our group \'SASS\' as a fulfilment for Major Project in our Bachelor of Engineering - Computer. It is the project to detect attacks in network and notify Admin.',
      lang: {
        'Python': pythonImg,
        'ReactJs': reactImg,
      }),
  Project(
      repo: 'https://github.com/kingace2056/IOTui',
      live: 'https://iotui.pages.dev/#/',
      title: 'IOT ui',
      description:
          'IOT ui is an UI application(Under Construction) that aims with creating UI demo for IOT devices control. The UI idea is taken from dribble.',
      lang: {
        'Flutter': flutterImg,
      }),
];
