import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/modules/home/pages/home_page.dart';
import 'package:portfolio/utils/color_utils.dart';
import 'package:portfolio/utils/text_style_utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'portfolio',
      theme: ThemeData.dark().copyWith(
        primaryColor: ColorUtils.primaryColor,
        scaffoldBackgroundColor: ColorUtils.bgColor,
        canvasColor: ColorUtils.bgColor,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.white)
            .copyWith(
              bodyText1: TextStyleUtils.bodyText1,
              bodyText2: TextStyleUtils.bodyText2,
            ),
      ),
      home: HomePage(),
    );
  }
}
