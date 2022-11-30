import 'package:flutter/material.dart';
import 'package:whatsapp_clone_flutter/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'WhastApp Demo',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 14, 125, 8),
      ),
      home: const Home(),
    );
  }
}
