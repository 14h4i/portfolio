import 'package:flutter/material.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/main/widgets/side_menu.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';

class MainPage extends StatefulWidget {
  final List<Widget> children;
  final Info info;

  const MainPage({
    Key? key,
    required this.children,
    required this.info,
  }) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: ColorUtils.bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                ),
              )),
      drawer: SideMenu(
        info: widget.info,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: ConstantUtils.maxWidth),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 2,
                  child: SideMenu(
                    info: widget.info,
                  ),
                ),
              const SizedBox(width: ConstantUtils.defaultPadding),
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
