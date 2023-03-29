import 'package:calendrier/ui/const/colors.dart';
import 'package:flutter/material.dart';
import '../../widgets/reusable.dart';

class StudentAuth extends StatelessWidget {
  const StudentAuth({super.key});

  @override
  Widget build(BuildContext context) {
    final validId = GlobalKey<FormState>();
    final idController = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 90, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                space(value: 50.0),
                Image.asset("assets/images/auth_illus.png"),
                space(value: 25.0),
                Center(
                  child: Text(
                    "User",
                    style: TextStyle(fontSize: 29, color: primaryColor),
                  ),
                ),
                space(value: 10),
                Center(
                  child: Text(
                    " Authentication",
                    style: TextStyle(fontSize: 29, color: primaryColor),
                  ),
                ),
                space(value: 70.0),
                TextFormField(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  controller: idController,
                  validator: (value) {
                    if (value!.contains("@")) {
                      return "value must be a valid id";
                    } else if (value.isEmpty) {
                      return "id must not be empty";
                    } else if (value.length < 13 || value.length > 13) {
                      return "id not valid";
                    }
                    return null;
                  },
                  cursorColor: primaryColor,
                  decoration: InputDecoration(
                    hintText: "202114...",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    enabled: true,
                    border: const OutlineInputBorder(),
                    focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                      ),
                    ),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 206, 202, 202),
                      ),
                    ),
                  ),
                ),
                space(value: 30),
                Center(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0.0,
                      backgroundColor: primaryColor,
                      padding: const EdgeInsetsDirectional.symmetric(
                        vertical: 15,
                        horizontal: 147,
                      ),
                    ),
                    onPressed: () {},
                    child: const Text("Submit"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
