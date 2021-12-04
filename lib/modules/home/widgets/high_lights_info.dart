import 'package:flutter/material.dart';
import 'package:portfolio/blocs/info_bloc.dart';
import 'package:portfolio/common/widgets/stateless/animated_counter.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/modules/home/widgets/high_light.dart';
import 'package:portfolio/providers/bloc_provider.dart';
import 'package:portfolio/providers/responsive.dart';
import 'package:portfolio/utils/constant_utils.dart';

class HighLightsInfo extends StatefulWidget {
  final Info info;
  const HighLightsInfo({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  State<HighLightsInfo> createState() => _HighLightsInfoState();
}

class _HighLightsInfoState extends State<HighLightsInfo> {
  InfoBloc? get infoBloc => BlocProvider.of<InfoBloc>(context);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.symmetric(vertical: ConstantUtils.defaultPadding),
      child: Responsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCouter(
                        value: widget.info.followers ?? 0,
                        text: '+',
                      ),
                      label: 'Followers',
                    ),
                    StreamBuilder<int?>(
                      stream: infoBloc!.contributionsStream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return HighLight(
                            counter: AnimatedCouter(
                              value: snapshot.data!,
                              text: '+',
                            ),
                            label: 'Contributions',
                          );
                        }
                        return const HighLight(
                          counter: AnimatedCouter(
                            value: 0,
                            text: '+',
                          ),
                          label: 'Contributions',
                        );
                      },
                    ),
                  ],
                ),
                const SizedBox(height: ConstantUtils.defaultPadding),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HighLight(
                      counter: AnimatedCouter(
                        value: widget.info.repos ?? 0,
                        text: '+',
                      ),
                      label: 'Public Repositories',
                    ),
                    HighLight(
                      counter: AnimatedCouter(
                        value: widget.info.gists ?? 0,
                        text: '+',
                      ),
                      label: 'Public Gists',
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HighLight(
                  counter: AnimatedCouter(
                    value: widget.info.followers ?? 0,
                    text: '+',
                  ),
                  label: 'Followers',
                ),
                StreamBuilder<int?>(
                  stream: infoBloc!.contributionsStream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return HighLight(
                        counter: AnimatedCouter(
                          value: snapshot.data!,
                          text: '+',
                        ),
                        label: 'Contributions',
                      );
                    }
                    return const HighLight(
                      counter: AnimatedCouter(
                        value: 0,
                        text: '+',
                      ),
                      label: 'Contributions',
                    );
                  },
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: widget.info.repos ?? 0,
                    text: '+',
                  ),
                  label: 'Public Repositories',
                ),
                HighLight(
                  counter: AnimatedCouter(
                    value: widget.info.gists ?? 0,
                    text: '+',
                  ),
                  label: 'Public Gists',
                ),
              ],
            ),
    );
  }
}
