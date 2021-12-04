import 'package:portfolio/providers/api/api_provider.dart';

class ContributionsRepo {
  final apiProvider = ApiProvider();

  Future<int?> getTotalContributions() async {
    try {
      final res = await apiProvider.post('/graphql', data: {
        "query":
            "query {viewer {contributionsCollection {contributionCalendar {totalContributions}}}}"
      });
      if (res.statusCode != 200) {
        return null;
      }
      final int totalContributions = res.data['data']['viewer']
              ['contributionsCollection']['contributionCalendar']
          ['totalContributions'];
      return totalContributions;
    } catch (e) {
      rethrow;
    }
  }
}
