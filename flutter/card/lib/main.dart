import 'package:flutter/material.dart';

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Card Sample')),
        body: CardExample(),
      ),
    );
  }
}

class CardExample extends StatefulWidget {
  const CardExample({Key? key}) : super(key: key);

  @override
  _CardExampleState createState() => _CardExampleState();
}

class _CardExampleState extends State<CardExample> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              child: const SizedBox(
                width: 300,
                height: 100,
                child:  Text('A person who never made a mistake never tried anything new '),
              ),
            ),
          ),
          const SizedBox(height: 16),
        const  Card(
            clipBehavior: Clip.hardEdge,
            child: SizedBox(
              width: 300,
              height: 100,
              child: Text('The true sign of intelligence is not knowledge but imagination.'),
            ),
          ),
          const SizedBox(height: 16),
         const Card(
          elevation: 10,
            clipBehavior: Clip.hardEdge,
            child: SizedBox(
              width: 300,
              height: 100,
              child:  Text('Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning."'),
            ),
          ),
        ],
      ),
    );
  }
}
