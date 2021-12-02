import 'package:flutter/material.dart';
import 'package:portfolio/common/widgets/stateless/animated_circular_progress_indicator.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';

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
          children: [
            ..._buildSkills(),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildSkills() {
    List<Widget> list = [];
    for (int i = 0; i < InfoUtils.skills.length; i++) {
      list.add(
        Expanded(
          child: AnimatedCircularProgressIndicator(
            label: InfoUtils.skills.keys.elementAt(i),
            percentage: InfoUtils.skills.values.elementAt(i),
          ),
        ),
      );
      if (i != InfoUtils.skills.length - 1) {
        list.add(
          const SizedBox(
            width: ConstantUtils.defaultPadding,
          ),
        );
      }
    }
    return list;
  }
}
