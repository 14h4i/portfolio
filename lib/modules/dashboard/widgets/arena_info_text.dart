import 'package:flutter/material.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';

class ArenaInfoText extends StatelessWidget {
  final String? title, text;

  const ArenaInfoText({
    Key? key,
    this.title,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: ConstantUtils.defaultPadding / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title!,
            style: TextStyleUtils.lable,
          ),
          Text(text!),
        ],
      ),
    );
  }
}
