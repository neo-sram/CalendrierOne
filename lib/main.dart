// ignore_for_file: unused_import

import 'package:calendrier/ui/const/colors.dart';
import 'package:calendrier/ui/pages/get_started.dart';
import 'package:calendrier/ui/pages/onBoarding/auth.dart';
import 'package:calendrier/ui/pages/onBoarding/workspace_name.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Calendrier());
}

class Calendrier extends StatelessWidget {
  const Calendrier({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      theme: ThemeData(
        scaffoldBackgroundColor: secondColor,
      ),
      routes: {
        "/": (context) {
          return const GetStarted();
        },
        "/auth": (context) {
          return const StudentAuth();
        },
        "/home": (context) {
          return const WorkSpaceName();
        },
      },
    );
  }
}
