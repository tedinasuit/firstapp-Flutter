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
          title: const Text('Flutter is:')
        ),

      body: Column(
        children: [
          Center(
            child: Container(
              child: const Text('hard if you are a media student'),
              margin: const EdgeInsets.all(100),
              padding: EdgeInsets.all(10),
              height: 100,
              width: 100,
              color: Colors.blueGrey,
              ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.airplay),
              Icon(Icons.contacts),
              Icon(Icons.incomplete_circle),
            ],
          )
        ],
      )

      ),
    );
  }
}

