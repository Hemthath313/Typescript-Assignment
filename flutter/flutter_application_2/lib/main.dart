import 'package:flutter/material.dart';

void main() {
  runApp(Mineapp());
}

class Mineapp extends StatelessWidget {
  // const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
              title: const Text("welcome to our page"),
              leading: IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                },
              )
              ),
              body: const Center(
                child:Text("welcome you all"
                ),
              ),
      ),
    );
  }
}
