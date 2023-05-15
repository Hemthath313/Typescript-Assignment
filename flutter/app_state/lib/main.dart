import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter with ChangeNotifier {
  int _counter;

  Counter(this._counter);

  int get counter => _counter;
  set counter(int value) {
    _counter = value;
    notifyListeners();
  }

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Counter App'),
        ),
        body: CounterView(),
      ),
    );
  }
}

class CounterView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<Counter>(
      builder: (context, counter, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Counter Value:',
                style: TextStyle(fontSize: 20),
              ),
              Text(
                '${counter.counter}',
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FloatingActionButton(
                    onPressed: () => counter.decrement(),
                    child: const Icon(Icons.remove),
                  ),
                  const SizedBox(width: 20),
                  FloatingActionButton(
                    onPressed: () => counter.increment(),
                    child: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}

void main() {
  runApp(
    ChangeNotifierProvider<Counter>(
      create: (_) => Counter(0),
      child: MyApp(),
    ),
  );
}
