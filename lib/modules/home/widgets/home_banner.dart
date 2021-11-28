import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/my_build_animated_text.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/image_utils.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
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
                  "Discover my Amazing \nArt Space!",
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                ),
                const MyBuildAnimatedText(),
                const SizedBox(height: ConstantUtils.defaultPadding),
                ElevatedButton(
                  child: const Text(
                    'EXPLORE NOW',
                  ),
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: ConstantUtils.defaultPadding * 2,
                      vertical: ConstantUtils.defaultPadding,
                    ),
                    backgroundColor: ColorUtils.primaryColor,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
