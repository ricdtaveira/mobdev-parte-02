import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exemplo Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Exemplo Flutter'),
        ),
        body: Center(
          child: Text('Olá, Mundo!'),
        ),
      ),
    );
  }
}

