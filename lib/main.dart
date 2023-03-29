// ignore_for_file: unused_import

import 'package:calendrier/ui/const/colors.dart';
import 'package:calendrier/ui/const/pages.dart';
import 'package:calendrier/ui/pages/get_started.dart';
import 'package:calendrier/ui/pages/onBoarding/auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calendrier());
}

class Calendrier extends StatelessWidget {
  const Calendrier({super.key});

  @override
  Widget build(BuildContext context) {
    final route = RoutesOfPages().routes;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: route.keys.elementAt(0),
      theme: ThemeData(
        scaffoldBackgroundColor: secondColor,
      ),
    );
  }
}
