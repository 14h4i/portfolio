import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';
import 'package:portfolio/widgets/animated_circular_progress_indicator.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            vertical: ConstantUtils.defaultPadding,
          ),
          child: Text(
            'Skills',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "Flutter",
                percentage: InfoUtils.percentageFlutter,
              ),
            ),
            SizedBox(
              width: ConstantUtils.defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "GitHub",
                percentage: InfoUtils.percentageGithub,
              ),
            ),
            SizedBox(
              width: ConstantUtils.defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularProgressIndicator(
                label: "Firebase",
                percentage: InfoUtils.percentageFirebase,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
