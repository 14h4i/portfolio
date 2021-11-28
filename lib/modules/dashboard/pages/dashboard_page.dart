import 'package:flutter/material.dart';
import 'package:portfolio/modules/dashboard/widgets/side_menu.dart';
import 'package:portfolio/utils/constant_utils.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: ConstantUtils.maxWidth),
          child: Row(
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
