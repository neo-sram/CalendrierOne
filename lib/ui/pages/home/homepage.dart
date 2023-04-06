import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
      padding: const EdgeInsets.all(20),
      child: Center(
          child: Column(
        children: [
          AppBar(
            title: const Text("hello User"), //replace with the user id
          )
        ],
      )),
    ));
  }
}
