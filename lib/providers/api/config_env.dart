import 'package:portfolio/providers/api/public.dart';

enum Flavor {
  staging,
  production,
  mock,
}

class ConfigEnv {
  static Flavor? appFlavor;

  static String getDomainAPI() {
    switch (appFlavor) {
      case Flavor.staging:
        return api;
      case Flavor.mock:
        return '';
      default:
        return api;
    }
  }

  static String getWebDomain() {
    switch (appFlavor) {
      case Flavor.staging:
        return api;
      default:
        return api;
    }
  }
}
