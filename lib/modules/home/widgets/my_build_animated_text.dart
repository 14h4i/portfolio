import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/flutter_coded_text.dart';
import 'package:portfolio/utils/constant_utils.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          const FlutterCodedText(),
          const SizedBox(height: ConstantUtils.defaultPadding / 2),
          const Text('I build '),
          AnimatedTextKit(
            animatedTexts: [
              TyperAnimatedText(
                "responsive web and mobile app.",
                speed: ConstantUtils.speedTyperAnimatedText,
              ),
              TyperAnimatedText(
                "complete e-Commerce app UI.",
                speed: ConstantUtils.speedTyperAnimatedText,
              ),
              TyperAnimatedText(
                "Chat app with dark and light theme.",
                speed: ConstantUtils.speedTyperAnimatedText,
              ),
            ],
          ),
          const SizedBox(height: ConstantUtils.defaultPadding / 2),
          const FlutterCodedText(),
        ],
      ),
    );
  }
}
