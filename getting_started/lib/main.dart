import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Try it again from the begining',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Hello there'),
          ), 
          body: const Center(
            child: Text('Hello world.'),
          )
        ));
  }
}
