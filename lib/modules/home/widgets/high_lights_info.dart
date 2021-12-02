import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/stateless/animated_counter.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/home/widgets/high_light.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/constant_utils.dart';

class HighLightsInfo extends StatelessWidget {
  final Info info;
  const HighLightsInfo({
    Key? key,
    required this.info,
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
                  children: [
                    HighLight(
                      counter: AnimatedCouter(
                        value: info.repos ?? 0,
                        text: '+',
                      ),
                      label: 'Github Public Repositories',
                    ),
                    const HighLight(
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
              children: [
                const HighLight(
                  counter: AnimatedCouter(
                    value: 119,
                    text: '+',
                  ),
                  label: 'Subscribers',
                ),
                const HighLight(
                  counter: AnimatedCouter(
                    value: 40,
                    text: '+',
                  ),
                  label: 'Videos',
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: info.repos ?? 0,
                    text: '+',
                  ),
                  label: 'Github Public Repositories',
                ),
                const HighLight(
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
