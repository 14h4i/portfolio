import 'package:portfolio/blocs/contributions_bloc.dart';
import 'package:portfolio/models/info.dart';
import 'package:portfolio/providers/bloc_provider.dart';
import 'package:portfolio/repos/contributions_repo.dart';
import 'package:portfolio/repos/info_repo.dart';
import 'package:rxdart/rxdart.dart';

class InfoBloc extends BlocBase {
  final ContributionsBloc _contributionsBloc;

  final InfoRepo _infoRepo;

  InfoBloc(this._infoRepo)
      : _contributionsBloc = ContributionsBloc(ContributionsRepo());

  final _infoCtrl = BehaviorSubject<Info?>();
  Stream<Info?> get infoStream => _infoCtrl.stream;
  Stream<int?> get contributionsStream =>
      _contributionsBloc.contributionsStream;

  Future<void> getInfos() async {
    try {
      final res = await _infoRepo.getInfos();
      if (res != null) {
        _infoCtrl.sink.add(res);
        _contributionsBloc.getTotalContributions();
      }
    } catch (e) {
      _infoCtrl.sink.addError('Cannot get info right now!!!');
    }
  }

  @override
  void dispose() {}
}
