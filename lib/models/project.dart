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
      description:
          'AceWall is an wallpaper app made using Flutter. It utilizes the power of Pexel to deliver millions of Wallpapers',
      lang: {
        'Flutter':
            'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png',
        'Dart':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbIB8ZTgj6hqcUpKPE97kc8KVvAHky5hFZIQ&usqp=CAU'
      }),
  Project(
      live: 'https://etherwall.netlify.app',
      repo: 'https://github.com/kingace2056/etherwall',
      title: 'EtherWall',
      description:
          'EtherWall is an concept Crypto app UI  made using Flutter. It is under construction , Many more to improve',
      lang: {
        'Flutter':
            'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png',
        'Dart':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbIB8ZTgj6hqcUpKPE97kc8KVvAHky5hFZIQ&usqp=CAU'
      }),
  Project(
      live:
          'https://play.google.com/store/apps/details?id=com.acestudios.driving_lisence',
      title: 'Driving Lisence Nepal',
      description:
          'Driving Lisence Nepal is an App for the preparation of Driving lisence exam in Nepal. It includes Model Questions , General Quiz , Color-Vision Test etc. It is live on playstore',
      lang: {
        'Flutter':
            'https://w7.pngwing.com/pngs/67/315/png-transparent-flutter-hd-logo-thumbnail.png',
        'Dart':
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbIB8ZTgj6hqcUpKPE97kc8KVvAHky5hFZIQ&usqp=CAU',
        'NodeJs':
            'data:image/jpeg;base64,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'
      }),
  Project(
      repo: 'https://github.com/kingace2056/algovis',
      live: 'https://p5-sort.netlify.app/',
      title: 'Algovis',
      description:
          'AlgoVis: Algorithms visualized using React and P5.js . This is a project done by our group \'SASS\' as a fulfilment for Minor Project in our Bachelor of Engineering - Computer. It is the project to visualize different algorithms. Go through live link and explore it',
      lang: {
        'ReactJs':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/2300px-React-icon.svg.png',
        'P5.js':
            'data:image/png;base64,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',
      }),
  Project(
      repo: 'https://github.com/kingace2056/MajorProject-IDS',
      title: 'Intrusion Detection System',
      description:
          'Realtime Network Intrusion Detection Using RandomForest . This is a project done by our group \'SASS\' as a fulfilment for Major Project in our Bachelor of Engineering - Computer. It is the project to detect attacks in network and notify Admin.',
      lang: {
        'Python':
            'https://www.logolynx.com/images/logolynx/c9/c981cbd34007b6376635105871346a2a.png',
        'ReactJs':
            'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/React-icon.svg/2300px-React-icon.svg.png',
      }),
];
