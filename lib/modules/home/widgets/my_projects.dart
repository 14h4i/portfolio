import 'package:flutter/material.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/modules/home/widgets/project_card.dart';
import 'package:portfolio/utils/constant_utils.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'My Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: demoProjects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            childAspectRatio: 1.3,
            crossAxisSpacing: ConstantUtils.defaultPadding,
            mainAxisSpacing: ConstantUtils.defaultPadding,
          ),
          itemBuilder: (context, index) => ProjectCard(
            project: demoProjects[index],
          ),
        ),
      ],
    );
  }
}
