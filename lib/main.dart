import 'package:flutter/material.dart';

void main() {
  runApp( MyApp() );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 90, 90),
          title: const Text('Eindhoven Freedom Walk')
        ),

      body: Column(
        children: [
          Center (
            child: Text(
              '$count',
              style: const TextStyle(fontSize: 50),
            ),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context, 
                MaterialPageRoute(
                  builder: (_) => const Instructions(),
                )
                
              );
            }, 
            child: const Text('Instructions')
            ),
        ],
      ),

      floatingActionButton: FloatingActionButton (
        backgroundColor: const Color.fromARGB(255, 255, 90, 90),
        child: const Icon(Icons.add), 
        onPressed: () {
          setState(() {
            count++;
          });
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

class Instructions extends StatelessWidget {
  const Instructions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
    );
  }
}

