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
          backgroundColor: Color.fromARGB(255, 255, 90, 90),
          title: const Text('Eindhoven Freedom Walk')
        ),

      body: 
      Column (
        children: [
          Stack(
            children: [
              Container(
                color: Colors.orange,
                width: 100,
                height: 100,
              ),
              const Icon(Icons.access_alarm),
            ],
          ),
          const Row (
            children: [
              Icon(Icons.access_alarm_sharp),
              Icon(Icons.add_reaction)
            ],
          )
        ]
      ),

      floatingActionButton: FloatingActionButton (
        backgroundColor: Color.fromARGB(255, 255, 90, 90),
        child: const Icon(Icons.add),
        onPressed: () {
          print('pressed!');
        }
      ),

      bottomNavigationBar: BottomNavigationBar (
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.leaderboard),
            label: 'Ranking',
          ),
                    BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),

    

      ),
    );
  }
}

