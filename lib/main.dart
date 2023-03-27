import 'package:flutter/material.dart';
import 'package:projeto/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Me Contrate',
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: const MyHome(),
    );
  }
}