class Badges {
  final String? title, image, link, description;

  Badges({this.title, this.link, this.image, this.description});
}

List<Badges> myBadges = [
  Badges(
      link:
          'https://www.udemy.com/certificate/UC-c944e738-42a6-406f-aa86-200d7609fbde/',
      title: 'Flutter Advanced Course - Clean Architecture With MVVM™',
      description:
          'This is a certificate of completion of the course "Flutter Advanced Course - Clean Architecture With MVVM™" on Udemy.',
      image:
          "https://firebasestorage.googleapis.com/v0/b/lisence-help.appspot.com/o/udemy.jpg?alt=media&token=08eb005d-f364-4021-aeaa-1d90b6487ae4"),
  Badges(
      link:
          'https://www.credly.com/badges/a7701d53-8ad2-4466-86f9-0a50e8ad1402/public_url',
      title: 'Digital Marketing \nProfessional \nCertificate -DMPC™',
      description:
          'The Digital Marketing Professional Certificate is a self-paced online course designed for individuals who want to enhance their digital marketing skills. The course is designed to help you master the essential disciplines in digital marketing, including search engine optimization (SEO), social media, pay-per-click (PPC), conversion optimization, web analytics, content marketing, email and mobile marketing.',
      image:
          'https://images.credly.com/size/680x680/images/1af9d80a-160a-4a5c-ae46-0a51d624a267/Marketing-Digital-Professional-Certificate-DMPC.png'),
  Badges(
    link:
        'https://www.credly.com/badges/79aae579-1c54-46d6-9dbf-5f10803447d9/public_url',
    title: 'Introduction to \nPacket Tracer',
    description:
        'Introduction to Packet Tracer is a self-paced course designed for beginners with no prior networking knowledge. The course teaches basic operations of the tool with multiple hands-on activities helping you to visualize a network using everyday examples, including Internet of Things (IoT).',
    image:
        'https://images.credly.com/size/680x680/images/09b6d58c-763a-4b40-aea1-787d8f46bbcd/Intro2PT.png',
  ),
  Badges(
    link:
        'https://www.credly.com/badges/ace77e81-da66-43da-ad7c-a1f368d985bc/public_url',
    title: 'Lifelong \nLearning',
    description:
        'The Lifelong Learning badge is a recognition of the commitment to continuous learning and professional development. It is awarded to individuals who have completed a minimum of 10 hours of training and have demonstrated a commitment to continuous learning and professional development.',
    image:
        'https://images.credly.com/size/680x680/images/f5cf37e4-6ebd-4067-96a9-b26d04f51ff7/CertiProf-Badge-LLL.png',
  ),
  Badges(
      link:
          'https://www.credly.com/badges/648acf24-9cd1-442c-a04b-00645a59ebbd/public_url',
      title: 'Cyber Security Foundation Professional Certificate - CSFPC™',
      description:
          'The Cybersecurity Foundation Professional Certificate (CSFPC) is a self-paced online course designed for individuals who want to enhance their cybersecurity skills. The course is designed to help you master the essential disciplines in cybersecurity, including security controls, risk assessment, incident response, and security architecture.',
      image:
          'https://images.credly.com/size/680x680/images/8a0fb550-4d51-41d0-be50-6c1f54526539/Cybersecurity-Foundation-Professional-Certificate-CSFPC.png')
];
