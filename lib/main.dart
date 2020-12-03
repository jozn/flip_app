import 'package:flip_app/ui/nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        // primarySwatch: FColors.primary2,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FScaffold(),
    );
  }
}
