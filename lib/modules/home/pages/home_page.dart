import 'package:flutter/material.dart';
import 'package:portfolio/blocs/info_bloc.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/main/pages/main_page.dart';
import 'package:portfolio/modules/home/widgets/high_lights_info.dart';
import 'package:portfolio/modules/home/widgets/home_banner.dart';
import 'package:portfolio/modules/home/widgets/my_projects.dart';
import 'package:portfolio/providers/bloc_provider.dart';
import 'package:portfolio/repos/info_repo.dart';
import 'package:portfolio/utils/color_utils.dart';
// import 'package:portfolio/modules/home/widgets/recommendations.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final InfoBloc _infoBloc;

  @override
  void initState() {
    super.initState();
    _infoBloc = InfoBloc(InfoRepo());
    _infoBloc.getInfos();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: _infoBloc,
      child: StreamBuilder<Info?>(
          stream: _infoBloc.infoStream,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return MainPage(
                info: snapshot.data!,
                children: [
                  HomeBanner(
                    info: snapshot.data!,
                  ),
                  HighLightsInfo(info: snapshot.data!),
                  const MyProjects(),
                  // Recommendations(),
                ],
              );
            }
            if (snapshot.hasError) {
              return Container(
                color: ColorUtils.bgColor,
                child: const Center(
                  child: Text('Something went wrong'),
                ),
              );
            }
            return Container(
              color: ColorUtils.bgColor,
              child: const Center(
                child: SizedBox(
                  height: 50,
                  width: 50,
                  child: CircularProgressIndicator(
                    strokeWidth: 5.0,
                    valueColor:
                        AlwaysStoppedAnimation<Color>(ColorUtils.primaryColor),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
