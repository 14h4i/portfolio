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
    'responsive web and mobile app.',
    'complete e-Commerce app UI.',
    'Chat app with dark and light theme.',
  ];

  static List<Project> listProjects = [
    Project(
      title: "Responsive Admin Panel or Dashboard - Flutter UI",
      description:
          "On Flutter V2.* web officially supported on a stable branch. Today I share an Admin panel or you can call it dashboard UI build with flutter. Now you can build your app dashboard using flutter. This dashboard contains almost everything that you need like a chart, table, nice small card for showing info.",
    ),
    Project(
      title: "E-Commerce Complate App - Flutter UI",
      description:
          "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
    ),
    Project(
      title: "Outlook Email App Redesign - Flutter Fully Responsive Design UI",
      description:
          "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
    ),
    Project(
      title: "Chat/Messaging App Light and Dark Theme - Flutter UI",
      description:
          "Today we gonna build messing/chat app #ui using #flutter that runs both Android and iOS devices also has a dark and light theme. We create in total 4 screens all of that support both Dark Theme and Light Theme. At first, we design a welcome screen that contains an image with a tag line also has a skip button.",
    ),
    Project(
      title: "Welcome page, Login Page and Sign up page - Flutter UI",
      description:
          "In the first part of our complete e-commerce app, we show you how you can create a nice clean onboarding screen for your e-commerce app that can run both Andriod and iOS devices because it builds with flutter. Then on the second episode, we build a Sign in, Forgot Password screen with a custom error indicator.",
    ),
    Project(
      title: "Covid-19 App - Flutter UI",
      description:
          "We redesign the outlook app also make it responsive so that you can run it everywhere on your phone, tab, or web. In this flutter responsive video, we will show you the real power of flutter. Make mobile, web, and desktop app from a single codebase.",
    ),
  ];
}
