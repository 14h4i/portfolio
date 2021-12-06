import 'dart:html';

import 'package:flutter/material.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/home/widgets/my_build_animated_text.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/image_utils.dart';

class HomeBanner extends StatelessWidget {
  final Info info;
  const HomeBanner({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            ImageUtils.bg,
            fit: BoxFit.cover,
          ),
          Container(color: ColorUtils.darkColor.withOpacity(0.66)),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: ConstantUtils.defaultPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hello, I'm 14h4i \na Developer",
                  style: Responsive.isDesktop(context)
                      ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          )
                      : Theme.of(context).textTheme.headline5!.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                ),
                if (Responsive.isMobileLarge(context))
                  const SizedBox(height: ConstantUtils.defaultPadding / 2),
                const MyBuildAnimatedText(),
                const SizedBox(height: ConstantUtils.defaultPadding),
                if (!Responsive.isMobileLarge(context))
                  ElevatedButton(
                    child: const Text(
                      'CONTACT ME',
                    ),
                    style: TextButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                        horizontal: ConstantUtils.defaultPadding * 2,
                        vertical: ConstantUtils.defaultPadding,
                      ),
                      backgroundColor: ColorUtils.primaryColor,
                    ),
                    onPressed: () {
                      window.location.href = "mailto:${info.email}";
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
