import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Bottom Navigation Bar',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyApp> {
  
  final tabs = [
   const Center (child: Text('Welcome to Home')),
   const Center(child: Text('Search Anything')),
   const Center(child: Text('Choose the Persons')),
  ];
  

  int Index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
      ),
      body: tabs[Index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: Index,
       backgroundColor: const Color.fromARGB(255, 108, 168, 217),

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.green,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Colors.yellow,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Person',
            backgroundColor: Colors.red,
          ),

        ],
        onTap: (currentindex) {
          setState(() {
            Index = currentindex;
          });
        },
      ),
    );
  }
}
