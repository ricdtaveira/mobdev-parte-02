import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

// ignore: use_key_in_widget_constructors
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exemplo Flutter'),
        ),
        body: const Center(
          child: Text('Olá, Mundo!'),
        ),
      ),
    );
  }
}
