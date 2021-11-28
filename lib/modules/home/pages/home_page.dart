import 'package:flutter/material.dart';
import 'package:portfolio/modules/dashboard/pages/dashboard_page.dart';
import 'package:portfolio/modules/home/widgets/home_banner.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const DashboardPage(
      children: [
        HomeBanner(),
      ],
    );
  }
}
