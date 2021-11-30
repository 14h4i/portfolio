import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/high_light.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/widgets/animated_counter.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: ConstantUtils.defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCouter(
                        value: 119,
                        text: '+',
                      ),
                      label: 'Subscribers',
                    ),
                    HighLight(
                      counter: AnimatedCouter(
                        value: 40,
                        text: '+',
                      ),
                      label: 'Videos',
                    ),
                  ],
                ),
                const SizedBox(height: ConstantUtils.defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    HighLight(
                      counter: AnimatedCouter(
                        value: 30,
                        text: '+',
                      ),
                      label: 'Github Public Repositories',
                    ),
                    HighLight(
                      counter: AnimatedCouter(
                        value: 13,
                        text: 'K+',
                      ),
                      label: 'Stars',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                HighLight(
                  counter: AnimatedCouter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: 40,
                    text: '+',
                  ),
                  label: 'Videos',
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: 30,
                    text: '+',
                  ),
                  label: 'Github Public Repositories',
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: 13,
                    text: 'K+',
                  ),
                  label: 'Stars',
                ),
              ],
            ),
    );
  }
}
