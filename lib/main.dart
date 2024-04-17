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

      body: Column (
        children: [
          Stack(
            children: [
              Container(
                color: Colors.orange,
                width: 100,
                height: 100,
              ),
              Icon(Icons.access_alarm),
            ],
          ),
          Row(
            children: [
              Icon(Icons.access_alarm_sharp),
              Icon(Icons.add_reaction)
            ],
          )
        ]
      )

      ),
    );
  }
}

