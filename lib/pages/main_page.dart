import 'package:flutter/material.dart';
import 'package:portfolio/values/app_colors.dart';
import 'package:portfolio/values/app_constants.dart';
import 'package:portfolio/values/app_images.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: AppConstants.maxWidth),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Drawer(
                    child: Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 1.23,
                          child: Container(
                            color: AppColors.drawerColor,
                            child: Column(
                              children: const [
                                CircleAvatar(
                                  radius: 50,
                                  backgroundImage: AssetImage(AppImages.avatar),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),
              Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
