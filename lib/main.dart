import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlue,
          title: const Text('Flutter')
        ),

      body: Container(
        child: const Text('Test text'),
        margin: const EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        )

      ),
    );
  }
}

