import 'package:flutter/material.dart';
import 'package:portfolio/modules/home/widgets/project_card.dart';
import 'package:portfolio/utils/constant_utils.dart';
import 'package:portfolio/utils/info_utils.dart';

class ProjectsGridView extends StatelessWidget {
  final int crossAxisCount;
  final double childAspectRatio;

  const ProjectsGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 1.3,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: InfoUtils.listProjects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: ConstantUtils.defaultPadding,
        mainAxisSpacing: ConstantUtils.defaultPadding,
      ),
      itemBuilder: (context, index) => ProjectCard(
        project: InfoUtils.listProjects[index],
      ),
    );
  }
}
