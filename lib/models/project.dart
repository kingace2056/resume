class Project {
  final String? title, description, repo, live;

  Project({this.title, this.description, this.repo, this.live});
}

List<Project> myProjects = [
  Project(
      live:
          'https://play.google.com/store/apps/details?id=com.acestudios.AceWall',
      repo: '',
      title: 'AceWall',
      description:
          'AceWall is an wallpaper app made using Flutter. It utilizes the power of Pexel to deliver millions of Wallpapers'),
  Project(
      live: 'https://etherwall.netlify.app',
      repo: 'https://github.com/kingace2056/etherwall',
      title: 'EtherWall',
      description:
          'EtherWall is an concept Crypto app UI  made using Flutter. It is under construction , Many more to improve'),
  Project(
      live:
          'https://play.google.com/store/apps/details?id=com.acestudios.driving_lisence',
      title: 'Driving Lisence Nepal',
      description:
          'Driving Lisence Nepal is an App for the preparation of Driving lisence exam in Nepal. It includes Model Questions , General Quiz , Color-Vision Test etc. It is live on playstore'),
  Project(
      repo: 'https://github.com/kingace2056/algovis',
      live: 'https://p5-sort.netlify.app/',
      title: 'Algovis',
      description:
          'AlgoVis: Algorithms visualized using React and P5.js . This is a project done by our group \'SASS\' as a fulfilment for Minor Project in our Bachelor of Engineering - Computer. It is the project to visualize different algorithms. Go through live link and explore it'),
  Project(
      repo: 'https://github.com/kingace2056/MajorProject-IDS',
      title: 'MajorProject-IDS',
      description:
          'Realtime Network Intrusion Detection Using RandomForest . This is a project done by our group \'SASS\' as a fulfilment for Major Project in our Bachelor of Engineering - Computer. It is the project to detect attacks in network and notify Admin.'),
];
