import 'dart:convert';

import 'package:http/http.dart'as http;

Future<String>Sam(String usertext)async{
  final Response =await http.post(
    Uri.parse("https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=AIzaSyDKpCqHGzo2uGVSUXUfIlCsk4d5itaAkAU"),  
    headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "contents": [
          {
            "parts": [
              {"text": usertext}
            ]
          }
        ]
      }));
  if (Response.statusCode == 200) {
    final json = jsonDecode(Response.body);
    return json['candidates'][0]["content"]["parts"][0]["text"];
  } else {
    return "something went wrong: ${Response.statusCode} ";
  }
} 