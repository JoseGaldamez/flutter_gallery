import 'package:flutter/material.dart';
import 'package:hero/pages/home_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Hero',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
