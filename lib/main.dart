import 'package:calendrier/ui/pages/get_started.dart';
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
      home: const GetStarted(),
      theme: ThemeData(scaffoldBackgroundColor: Colors.white),
    );
  }
}
