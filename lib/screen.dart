import 'dart:ffi';

import 'package:flutter/material.dart';

class Screens extends StatefulWidget {
  Screens({super.key});

  @override
  State<Screens> createState() => _ScreensState();
}

class _ScreensState extends State<Screens> {TextEditingController sendcont=TextEditingController();
  bool loading= false;
String Response="";
void sendmessage()async{if(sendcont.text.trim().isEmpty){return null;}}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 13, 23, 29),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
              "https://upload.wikimedia.org/wikipedia/commons/f/f9/Wikimedia_Brand_Guidelines_Update_2022_Wikimedia_Logo_Brandmark.png",
            ),
          ),
        ),
        actions: [
          Padding(padding: const EdgeInsets.all(8.0)),
          Icon(Icons.settings, color: const Color.fromARGB(255, 246, 245, 245)),

          SizedBox(width: 10),
          Icon(
            Icons.more_vert,
            color: const Color.fromARGB(255, 244, 240, 240),
          ),
        ],
      ),
      bottomNavigationBar: TextField(
        decoration: InputDecoration(
          label: Text("search"),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
          prefixIcon: Icon(Icons.search),
          suffixIcon: GestureDetector(onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) =>Screens(),));},
       child: Icon(Icons.send, color: Colors.white))),
        ),
      );
    
  }
}