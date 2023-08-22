import 'package:calendrier/ui/pages/onBoarding/workspace_name.dart';
import 'package:flutter/material.dart';
import '../../widgets/reusable.dart';
import 'package:calendrier/ui/const/colors.dart';

class StudentAuth extends StatelessWidget {
  const StudentAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final authKey = GlobalKey<FormState>();
    RegExp idRegex = RegExp(r'^2021524160\d{3}$');
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              space(value: 30.0),
              Image.asset('assets/images/auth.png'),
              space(value: 60.0),
              Text(
                'Please enter your student id !',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: primaryColor,
                ),
              ),
              Form(
                key: authKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "please enter a text !";
                        } else if (!idRegex.hasMatch(value)) {
                          return 'Id not valid !!';
                        }
                        return null;
                      },
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: secondColor,
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.all(20.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onPressed: () {
                        if (authKey.currentState!.validate()) {
                          Navigator.pushNamed(
                            context,
                            '/home',
                            arguments: const WorkSpaceName(),
                          );
                        }
                      },
                      child: const Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Verify",
                            style: TextStyle(fontSize: 24),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              space(value: 30.0),
            ],
          ),
        ),
      ),
    );
  }
}
