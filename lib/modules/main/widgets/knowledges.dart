import 'package:flutter/material.dart';
import 'package:portfolio/modules/main/widgets/knowledge_text.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
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
            'Knowledges',
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        ..._buildKnowledges(),
      ],
    );
  }

  List<Widget> _buildKnowledges() {
    List<Widget> list = [];
    for (int i = 0; i < InfoUtils.knowledges.length; i++) {
      list.add(
        KnowledgeText(
          text: InfoUtils.knowledges.elementAt(i),
        ),
      );
    }
    return list;
  }
}
