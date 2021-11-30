import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/modules/dashboard/widgets/arena_info_text.dart';
import 'package:portfolio/modules/dashboard/widgets/knowledges.dart';
import 'package:portfolio/modules/dashboard/widgets/my_info.dart';
import 'package:portfolio/modules/dashboard/widgets/skills.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/icon_utils.dart';
import 'package:portfolio/utils/info_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';

import 'coding.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  late ScrollController _scrollController;
  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          children: [
            const MyInfo(),
            Expanded(
                child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(ConstantUtils.defaultPadding),
              child: Column(
                children: [
                  const ArenaInfoText(
                    title: 'Residence',
                    text: InfoUtils.residence,
                  ),
                  const ArenaInfoText(
                    title: 'City',
                    text: InfoUtils.city,
                  ),
                  const ArenaInfoText(
                    title: 'Age',
                    text: InfoUtils.age,
                  ),
                  TextButton(
                    child: FittedBox(
                      child: Row(
                        children: [
                          const Text(
                            'DOWNLOAD CV',
                            style: TextStyleUtils.downloadCV,
                          ),
                          const SizedBox(
                              height: ConstantUtils.defaultPadding / 2),
                          SvgPicture.asset(IconUtils.download),
                        ],
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: ConstantUtils.defaultPadding),
                    color: ColorUtils.buttonColor,
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          icon: SvgPicture.asset(IconUtils.linkedin),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset(IconUtils.github),
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: SvgPicture.asset(IconUtils.twitter),
                          onPressed: () {},
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                  const Skills(),
                  const SizedBox(height: ConstantUtils.defaultPadding),
                  const Coding(),
                  const Knowledges(),
                  const Divider(),
                  const SizedBox(height: ConstantUtils.defaultPadding / 2),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
