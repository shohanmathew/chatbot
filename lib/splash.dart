import 'package:chatbot/screen.dart';
import 'package:flutter/material.dart';

class chatbot extends StatelessWidget {
  const chatbot({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Screens()),
      );
    });
    return Scaffold(
      body: Center(
        child: Image(
          image: NetworkImage(
            "https://upload.wikimedia.org/wikipedia/commons/f/f9/Wikimedia_Brand_Guidelines_Update_2022_Wikimedia_Logo_Brandmark.png",
          ),
        ),
      ),
    );
  }
}