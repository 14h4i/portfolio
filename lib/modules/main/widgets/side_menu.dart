import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/main/widgets/arena_info_text.dart';
import 'package:portfolio/modules/main/widgets/knowledges.dart';
import 'package:portfolio/modules/main/widgets/my_info.dart';
import 'package:portfolio/modules/main/widgets/skills.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'coding.dart';

class SideMenu extends StatefulWidget {
  final Info info;
  const SideMenu({
    Key? key,
    required this.info,
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
            MyInfo(info: widget.info),
            Expanded(
                child: SingleChildScrollView(
              controller: _scrollController,
              padding: const EdgeInsets.all(ConstantUtils.defaultPadding),
              child: Column(
                children: [
                  // ..._buildInfos(),
                  ArenaInfoText(
                    title: 'Country',
                    text: widget.info.country,
                  ),
                  ArenaInfoText(
                    title: 'City',
                    text: widget.info.city,
                  ),
                  const ArenaInfoText(
                    title: 'Age',
                    text: InfoUtils.age,
                  ),
                  TextButton(
                    child: FittedBox(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'DOWNLOAD CV',
                            style: TextStyleUtils.downloadCV,
                          ),
                          SizedBox(width: ConstantUtils.defaultPadding / 2),
                          // SvgPicture.asset(IconUtils.download),
                          Icon(
                            FontAwesomeIcons.download,
                            color: ColorUtils.bodyTextColor,
                          )
                        ],
                      ),
                    ),
                    onPressed: () {
                      window.location.href = InfoUtils.cv;
                    },
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: ConstantUtils.defaultPadding),
                    color: ColorUtils.buttonColor,
                    child: Row(
                      children: [
                        const Spacer(),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.linkedin,
                              color: ColorUtils.bodyTextColor),
                          onPressed: () {
                            window.location.href = InfoUtils.linkedin;
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.github,
                              color: ColorUtils.bodyTextColor),
                          onPressed: () {
                            window.location.href = widget.info.github!;
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.envelope,
                              color: ColorUtils.bodyTextColor),
                          onPressed: () {
                            window.location.href =
                                "mailto:${widget.info.email}";
                          },
                        ),
                        IconButton(
                          icon: const Icon(FontAwesomeIcons.telegram,
                              color: ColorUtils.bodyTextColor),
                          onPressed: () {
                            window.location.href = InfoUtils.telegram;
                          },
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
