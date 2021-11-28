import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/icon_utils.dart';

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
        const KnowledgeText(text: 'Flutter, Dart'),
        const KnowledgeText(text: 'Stylus, Sass, Less'),
        const KnowledgeText(text: 'Gulp, Webpack, Grunt'),
        const KnowledgeText(text: 'GTT Knowledge'),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  final String text;
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: ConstantUtils.defaultPadding / 2),
      child: Row(
        children: [
          SvgPicture.asset(IconUtils.check),
          const SizedBox(width: ConstantUtils.defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
