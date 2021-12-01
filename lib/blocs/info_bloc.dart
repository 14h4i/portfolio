import 'package:portfolio/models/info.dart';
import 'package:portfolio/providers/bloc_provider.dart';
import 'package:portfolio/repos/info_repo.dart';
import 'package:rxdart/rxdart.dart';

class InfoBloc extends BlocBase {
  final InfoRepo _infoRepo;

  InfoBloc(this._infoRepo);

  final _infoCtrl = BehaviorSubject<Info?>();
  Stream<Info?> get infoStream => _infoCtrl.stream;

  Future<void> getInfos() async {
    try {
      final res = await _infoRepo.getInfos();
      if (res != null) {
        _infoCtrl.sink.add(res);
      }
    } catch (e) {
      _infoCtrl.sink.addError('Cannot get info right now!!!');
    }
  }

  @override
  void dispose() {}
}
