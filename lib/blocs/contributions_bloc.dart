import 'package:portfolio/providers/bloc_provider.dart';
import 'package:portfolio/repos/contributions_repo.dart';
import 'package:rxdart/rxdart.dart';

class ContributionsBloc extends BlocBase {
  final ContributionsRepo _contributionsRepo;

  ContributionsBloc(this._contributionsRepo);

  final _contributionsCtrl = BehaviorSubject<int>();

  Stream<int?> get contributionsStream => _contributionsCtrl.stream;

  Future<void> getTotalContributions() async {
    try {
      final res = await _contributionsRepo.getTotalContributions();
      if (res != null) {
        _contributionsCtrl.sink.add(res);
      }
    } catch (e) {
      rethrow;
    }
  }

  @override
  void dispose() {}
}
