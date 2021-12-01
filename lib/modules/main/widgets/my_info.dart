import 'package:flutter/material.dart';
import 'package:portfolio/utils/image_utils.dart';
import 'package:portfolio/utils/info_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';
import 'package:portfolio/utils/color_utils.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
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
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(ImageUtils.avatar),
            ),
            const Spacer(flex: 1),
            Text(
              InfoUtils.name,
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
