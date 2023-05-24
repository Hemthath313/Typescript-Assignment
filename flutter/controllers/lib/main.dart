import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TextEditingController',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TextFieldPage(),
    );
  }
}

class TextFieldPage extends StatefulWidget {
  

  @override
  State<TextFieldPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<TextFieldPage> {
  final TextEditingController _textEditingController = TextEditingController();
  String enteredText = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void updateEnteredText(String newText) {
    setState(() {
      enteredText = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TextEditingController'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _textEditingController,
              decoration: const InputDecoration(
                labelText: 'Enter your text',
              ),
            ),
            const SizedBox(height: 16),
            Text(
               ' $enteredText',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String text = _textEditingController.text;
          updateEnteredText(text);
        },
        child: const Icon(Icons.check),
      ),
    );
  }
}
