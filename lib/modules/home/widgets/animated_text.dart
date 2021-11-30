import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';

class AnimatedText extends StatelessWidget {
  const AnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(
      animatedTexts: [
        ..._buildAnimatedTexts(),
      ],
    );
  }

  List<TyperAnimatedText> _buildAnimatedTexts() {
    List<TyperAnimatedText> list = [];
    for (int i = 0; i < InfoUtils.animatedTexts.length; i++) {
      list.add(
        TyperAnimatedText(
          InfoUtils.animatedTexts.elementAt(i),
          speed: ConstantUtils.speedTyperAnimatedText,
        ),
      );
    }
    return list;
  }
}
