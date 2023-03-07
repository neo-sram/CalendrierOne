import 'package:calendrier/ui/const/colors.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const StudentAuth(),
      theme: ThemeData(
        scaffoldBackgroundColor: secondColor,
      ),
      routes: {
        "started": (context) {
          return const GetStarted();
        },
        "studentAuth" : (context) {
          return const StudentAuth();
        }
      },
    );
  }
}
