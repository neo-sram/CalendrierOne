import 'package:calendrier/ui/const/colors.dart';
import 'package:flutter/material.dart';

import '../widgets/reuseble.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              children: [
                space(value: 30.0),
                Image.asset('assets/images/started_screen.png'),
                space(value: 70.0),
                Text(
                  'Welcome',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: primaryColor,
                  ),
                ),
                const Text(
                  "to get started click on the button below ! ",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                space(value: 150),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: secondColor,
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.all(20.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Getting Started",
                        style: TextStyle(fontSize: 24),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
