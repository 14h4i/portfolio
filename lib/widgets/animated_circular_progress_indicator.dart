import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';

class AnimatedCircularProgressIndicator extends StatelessWidget {
  final double percentage;
  final String lable;
  const AnimatedCircularProgressIndicator({
    Key? key,
    required this.percentage,
    required this.lable,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: ConstantUtils.defaultDuration,
            builder: (context, double value, child) => Stack(
              fit: StackFit.expand,
              children: [
                CircularProgressIndicator(
                  value: value,
                  color: ColorUtils.primaryColor,
                  backgroundColor: ColorUtils.darkColor,
                ),
                Center(
                  child: Text(
                    (value * 100).toInt().toString() + "%",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(height: ConstantUtils.defaultPadding / 2),
        Text(
          lable,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
