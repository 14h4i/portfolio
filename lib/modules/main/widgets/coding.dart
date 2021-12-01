import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';
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
        ..._buildCoding(),
      ],
    );
  }

  List<Widget> _buildCoding() {
    List<Widget> list = [];
    for (int i = 0; i < InfoUtils.codings.length; i++) {
      list.add(
        AnimatedLinearProgressIndicator(
          label: InfoUtils.codings.keys.elementAt(i),
          percentage: InfoUtils.codings.values.elementAt(i),
        ),
      );
    }
    return list;
  }
}
