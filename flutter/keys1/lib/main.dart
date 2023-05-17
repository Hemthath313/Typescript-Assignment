import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> items = ['Hemthath', 'Senthil', 'praveen','vasanth','karthik'];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unique Key Example',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Unique Key'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return ListTile(
              key: UniqueKey(), // Use UniqueKey for each list item
              title: Text(item),
            );
          },
        ),
      ),
    );
  }
}
