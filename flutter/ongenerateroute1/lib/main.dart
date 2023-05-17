import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Route<dynamic>? generateRoute(RouteSettings settings) {
    // Extract the route name
    final String? routeName = settings.name;

    if (routeName == '/details') {
      // Return a MaterialPageRoute with the DetailsScreen widget
      return MaterialPageRoute(builder: (_) => DetailsScreen());
    }

    // Return null for any unknown route
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      initialRoute: '/',
      onGenerateRoute: generateRoute,
    );
  }
}

class DetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Details')),
      body: Center(child: Text('Details Screen')),
    );
  }
}
