import 'package:flutter/material.dart';

void main() {
  runApp(Application());
}

class Application extends StatefulWidget {
  // const MyWidget({super.key});

  @override
  State<Application> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Application> {
  String value = "welcome to our page";

  void click() {
    setState(() {
    if (value == "welcome to our page") {
      value = "Thanks for clicking";
    } else {
      value = "welcome to our page";
    }
  });
}

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: <Widget>[
          Text('${value}'),
          FloatingActionButton(
            child: (Icon(Icons.add)),
            onPressed: () {
              click();
            },
          )
        ],
      ),
    );
  }
}
