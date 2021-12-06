import 'package:portfolio/models/project_model.dart';

class InfoUtils {
  static const String position = 'Junior Flutter Developer';
  static const String linkedin = "https://www.linkedin.com/in/14h4i/";
  static const String telegram = "https://t.me/l4h4i";

  static const String age = '21';

  // static const Map<String, String> infos = {
  //   'Country': 'Viet Nam',
  //   'City': 'Ho Chi Minh',
  //   'Age': '21',
  // };

  static const Map<String, double> skills = {
    'Flutter': 0.7,
    'Github': 0.65,
    'Firebase': 0.55,
  };

  static const Map<String, double> codings = {
    'Dart': 0.75,
    'JavaScript': 0.68,
    'Java': 0.64,
    'SQL': 0.57,
    'C++': 0.66,
  };

  static const List<String> knowledges = [
    'Flutter, Dart',
    'Firebase, GCP',
    'Nodejs ,Cloud Functions',
    'java Servlet, JSP',
  ];

  static const List<String> animatedTexts = [
    'My world.',
    'Mobile Apps.',
    'Websites.',
    'My joy every day.',
  ];

  static List<Project> listProjects = [
    Project(
      title: "App for Security worker - Flutter App",
      description:
          "This is a mobile app that helps security worker with timekeeping and daily patrols. Help the worker's work to ensure standards, and accuracy.",
      link: 'https://bit.ly/3p5LTe8',
    ),
    Project(
      title: "Web for Admin - Flutter Web",
      description:
          "This is a website that helps admins manage security worker. Monitor daily work and assign duty schedule to security worker.",
      link: 'https://bit.ly/3I4mslU',
    ),
    Project(
      title: "Social Network App - Flutter App",
      description:
          "Social network apps built with Flutter. Has all the functions of today's popular social networking applications.",
      link: 'https://github.com/14h4i/social_app',
    ),
    Project(
      title: "Coffee chain management web - Java Servlet JSP",
      description:
          "This is a website that helps to manage coffee shop chains. The web has a section for managers and a section for chains.",
      link: 'https://github.com/14h4i/JavaGit',
    ),
    Project(
      title: "Vehicle plate recognition App - Python",
      description:
          "The app helps to recognize the number plates of vehicles on the road and take pictures of them.",
      link: 'https://github.com/14h4i/textRecognition',
    ),
  ];
}
