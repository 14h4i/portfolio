import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/animated_text.dart';
import 'package:portfolio/modules/home/widgets/flutter_coded_text.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/constant_utils.dart';

class MyBuildAnimatedText extends StatelessWidget {
  const MyBuildAnimatedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      maxLines: 1,
      style: Theme.of(context).textTheme.subtitle1!,
      child: Row(
        children: [
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(height: ConstantUtils.defaultPadding / 2),
          const Text('I build '),
          Responsive.isMobile(context)
              ? const Expanded(
                  child: AnimatedText(),
                )
              : const AnimatedText(),
          if (!Responsive.isMobileLarge(context))
            const SizedBox(height: ConstantUtils.defaultPadding / 2),
          if (!Responsive.isMobileLarge(context)) const FlutterCodedText(),
        ],
      ),
    );
  }
}
