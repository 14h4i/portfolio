import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/icon_utils.dart';

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
