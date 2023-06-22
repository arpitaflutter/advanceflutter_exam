import 'package:flutter/material.dart';

class MarksScreen extends StatefulWidget {
  const MarksScreen({Key? key}) : super(key: key);

  @override
  State<MarksScreen> createState() => _MarksScreenState();
}

class _MarksScreenState extends State<MarksScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Congratulations!!",
                style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "You have win the game..",
                style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              Text(
                "",
                style: TextStyle(
                    color: Colors.green.shade900,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
