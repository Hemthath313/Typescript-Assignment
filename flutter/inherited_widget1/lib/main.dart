import 'package:flutter/material.dart';

// Step 1: Create the ChangeNotifier class
class CountModel with ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void incrementCount() {
    _count++;
    notifyListeners();
  }
}

// Step 2: Create the InheritedWidget class
class CountProvider extends InheritedNotifier {
  final CountModel countModel;

  CountProvider({
    required this.countModel,
    required Widget child,
  }) : super(notifier: countModel, child: child);

  static CountProvider? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CountProvider>();
  }
}

// Step 3: Create a widget that consumes the inherited count value
class CountDisplay extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Step 4: Access the inherited count value
    final countModel = CountProvider.of(context)!.countModel;

    return Text('Count: ${countModel.count}');
  }
}

// Step 5: Create a widget that modifies the inherited count value
class CountButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final countModel = CountProvider.of(context)!.countModel;

    return ElevatedButton(
      onPressed: () {
        // Step 6: Modify the inherited count value
        countModel.incrementCount();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Count incremented')),
        );
      },
      child:const  Text('Increment Count'),
    );
  }
}

// Step 7: Create the main app widget
class MyApp extends StatelessWidget {
  final CountModel countModel = CountModel();

  @override
  Widget build(BuildContext context) {
    return CountProvider(
      countModel: countModel,
      child: MaterialApp(
        title: 'InheritedWidget Example',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('InheritedWidget Example'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CountDisplay(),
              CountButton(),
            ],
          ),
        ),
      ),
    );
  }
}

// Step 8: Run the app
void main() {
  runApp(MyApp());
}
