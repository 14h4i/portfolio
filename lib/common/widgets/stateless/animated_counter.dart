import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';

class AnimatedCouter extends StatelessWidget {
  final int value;
  final String text;

  const AnimatedCouter({
    Key? key,
    required this.value,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: ConstantUtils.defaultDuration,
      builder: (context, value, child) => Text(
        value != 0 ? '$value$text' : '$value',
        style: Theme.of(context)
            .textTheme
            .headline6!
            .copyWith(color: ColorUtils.primaryColor),
      ),
    );
  }
}
