import 'package:calendrier/ui/pages/get_started.dart';
import 'package:calendrier/ui/pages/onBoarding/auth.dart';

class RoutesOfPages {
  final routes = {
    "getStarted": (context) {
      return const GetStarted();
    },
    "studentAuth": (context) {
      return const StudentAuth();
    }
  };
}
