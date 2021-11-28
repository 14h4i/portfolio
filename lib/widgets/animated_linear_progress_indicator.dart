import 'package:flutter/material.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';

class AnimatedLinearProgressIndicator extends StatelessWidget {
  final double percentage;
  final String label;

  const AnimatedLinearProgressIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: ConstantUtils.defaultPadding),
      child: TweenAnimationBuilder(
          tween: Tween<double>(begin: 0, end: percentage),
          duration: ConstantUtils.defaultDuration,
          builder: (context, double value, child) => Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        label,
                        style: TextStyleUtils.lable,
                      ),
                      Text((value * 100).toInt().toString() + '%')
                    ],
                  ),
                  const SizedBox(height: ConstantUtils.defaultPadding / 2),
                  LinearProgressIndicator(
                    value: value,
                    color: ColorUtils.primaryColor,
                    backgroundColor: ColorUtils.darkColor,
                  ),
                ],
              )),
    );
  }
}
