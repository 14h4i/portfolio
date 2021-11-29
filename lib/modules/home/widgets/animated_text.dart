import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
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
    );
  }
}
