import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/stateless/circle_avatar_border.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/utils/info_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';
import 'package:portfolio/utils/color_utils.dart';

class MyInfo extends StatelessWidget {
  final Info info;
  const MyInfo({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: ColorUtils.drawerColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2),
            CircleAvatarBorder(
              size: 100,
              avatarUrl: info.avatarUrl,
            ),
            const Spacer(flex: 1),
            Text(
              info.name ?? 'Unknown',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            const Text(
              InfoUtils.position,
              textAlign: TextAlign.center,
              style: TextStyleUtils.position,
            ),
            const Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
