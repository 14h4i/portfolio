import 'package:portfolio/models/info.dart';
import 'package:portfolio/providers/api/api_provider.dart';
import 'package:portfolio/providers/api/public.dart';

class InfoRepo {
  final apiProvider = ApiProvider();

  Future<Info?> getInfos() async {
    try {
      final res = await apiProvider.get('/users/$user');

      if (res.statusCode != 200) {
        return null;
      }

      return Info.fromJson(res.data);
    } catch (e) {
      rethrow;
    }
  }
}
