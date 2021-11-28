import 'package:flutter/material.dart';
import 'package:portfolio/modules/dashboard/widgets/side_menu.dart';
import 'package:portfolio/utils/constant_utils.dart';

class DashboardPage extends StatefulWidget {
  final List<Widget> children;

  const DashboardPage({
    Key? key,
    required this.children,
  }) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: ConstantUtils.maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                flex: 2,
                child: SideMenu(),
              ),
              Expanded(
                flex: 7,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...widget.children,
                    ],
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
