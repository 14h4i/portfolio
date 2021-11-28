import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/widgets/animated_linear_progress_indicator.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(
              vertical: ConstantUtils.defaultPadding),
          child: Text(
            'Coding',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Dart',
          percentage: 0.75,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'JavaScript',
          percentage: 0.68,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'Java',
          percentage: 0.64,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'SQL',
          percentage: 0.57,
        ),
        const AnimatedLinearProgressIndicator(
          label: 'C++',
          percentage: 0.66,
        ),
      ],
    );
  }
}
